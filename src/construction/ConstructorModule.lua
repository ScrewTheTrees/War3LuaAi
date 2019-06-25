require("TreeCore")
require("utils.Utils")
require("ArrayList")
require("DigestModule")
require("StatsModule")
require("buildings.BuildingAllocatorList")
require("towns.TownAllocatorList")
require("towns.TownBuildingLocationModule")
require("workers.WorkerGroupsList")
require("construction.ConstructionsList")
require("construction.ConstructionTicketDto")

ConstructorModule = { }

---@param aiModules AIModules
function ConstructorModule.Create(aiPlayer, aiModules)
    ---@class ConstructorModule
    local this = { }
    local logger = TreeCore.CreateLogger("ConstructorModule.lua")

    logger.Verbose("Started Building ConstructorModule")

    this.statsModule = StatsModule.Create(aiPlayer)
    this.constructionList = ConstructionsList.Create()
    this.buildingLocation = TownBuildingLocationModule.Create()

    function this.ResetQuery()
        this.statsModule.ResetVirtualEconomy()
    end

    ---@param buildingType string
    ---@param amount number
    ---@param townId number
    ---@param buildingLocationSize TownBuildingLocationModule.locationSizes
    function this.ConstructBuildingAsQuery(buildingType, amount, townId, buildingLocationSize)
        if (townId < 1) then
            townId = math.random(1, aiModules.townAllocator.Size())
        end
        ---@type TownDto
        if (#this.constructionList.ListNoTarget() == 0) and this.ResolveUnitsInConstruction(buildingType) < amount then
            this.UpdateAllTickets()
            if (this.statsModule.CanAffordUnitVirtual(Utils.FourCC(buildingType))) then
                local worker = aiModules.workerGroupsList.GetIdleConstructor()

                if (worker) then
                    local index = this.constructionList.Push(ConstructionTicketDto.Create(worker, buildingType, townId, buildingLocationSize))
                    this.UpdateConstructionTicket(index)
                end
            end
            this.UpdateAllTickets()
        end
    end

    function this.UpdateAllTickets()
        this.RemoveInactiveTicketTargets()
        this.ResolveWorkers()
    end

    ---@param index number
    function this.UpdateConstructionTicket(index)
        ---@type ConstructionTicketDto
        local ticket = this.constructionList.Get(index)
        local town = aiModules.townAllocator.GetOrFirst(ticket.townId)
        local worker = ticket.worker
        local buildLoc = this.buildingLocation.GetTownBuildingLocationByLoc(town.location, ticket.targetType, aiModules.workerGroupsList.workerTypeConfig.build, ticket.buildingLocationSize)
        ticket.ReplaceLocation(buildLoc)
        IssueBuildOrderById(worker.unit, Utils.FourCC(ticket.targetType), GetLocationX(buildLoc), GetLocationY(buildLoc))
        this.UpdateAllTickets()
    end

    function this.ResolveWorkers()
        aiModules.workerGroupsList.ReplaceWorkerOrder(Ids.orderTypes.ORDER_BUILD, aiModules.workerGroupsList.workerTypeConfig.buildIdleOrder)
        ---@param ticket ConstructionTicketDto
        this.constructionList.ForEach(function(ticket)
            if (ticket.worker) then
                ticket.worker.order = Ids.orderTypes.ORDER_BUILD
                if (not ticket.target) and (not this.buildingLocation.CheckLocation(ticket.targetLocation, ticket.targetType, aiModules.workerGroupsList.workerTypeConfig.build)) then
                    local town = aiModules.townAllocator.GetOrFirst(ticket.townId)
                    ticket.ReplaceLocation(this.buildingLocation.GetTownBuildingLocationByLoc(town.location, ticket.targetType, aiModules.workerGroupsList.workerTypeConfig.build, ticket.buildingLocationSize))
                end
            end
        end)
    end

    function this.ResolveUnitsInConstruction(unitType)
        return #Utils.GetUnitsOfTypeByPlayer(unitType, aiPlayer)
    end

    ---@return ConstructionTicketDto
    function this.GetUnusedTicketByUnitType(unitType)
        local retVar
        ---@param ticket ConstructionTicketDto
        this.constructionList.ForEach(function(ticket)
            if (ticket.targetType == unitType) then
                if (not ticket.target) then
                    retVar = ticket
                end
            end
        end)
        return retVar
    end

    ---@param ticket ConstructionTicketDto
    function this.RemoveTicket(ticket)
        if (ticket.worker) then
            ticket.worker.order = Ids.orderTypes.ORDER_IDLE
        end
        this.constructionList.PopByReference(ticket)
        aiModules.workerHandlerModule.UpdateOrdersForWorkers()
    end

    function this.RemoveInactiveTicketTargets()
        ---@param ticket ConstructionTicketDto
        this.constructionList.ForEach(function(ticket)
            if (ticket.worker) then
                if (ticket.worker.order == Ids.orderTypes.ORDER_DEAD) then
                    if (ticket.target) then
                        ticket.worker = aiModules.workerGroupsList.GetIdleConstructor() --Nil or actual worker
                        if (ticket.worker) then
                            IssueTargetOrder(ticket.worker.unit, "repair", ticket.target)
                        end
                    else
                        this.RemoveTicket(ticket)
                    end
                end
            end
            if (ticket.target) then
                if (this.statsModule.IsUnitDead(ticket.target)) then
                    this.RemoveTicket(ticket)
                end
            end
        end)
    end

    DigestModule.slowDigest.AddToDigest("ConstructorTicket" .. tostring(aiPlayer), this.UpdateAllTickets)

    ---@param buildingDto BuildingDto
    aiModules.buildings.onStartConstruct.callbacks.Push(function(buildingDto)
        local ticket = this.GetUnusedTicketByUnitType(Utils.CCInteger(GetUnitTypeId(buildingDto.unit)))
        ticket.target = buildingDto.unit
    end)
    ---@param buildingDto BuildingDto
    aiModules.buildings.onFinishConstruct.callbacks.Push(function(buildingDto)
        local ticket = this.constructionList.GetByTarget(buildingDto.unit)
        this.RemoveTicket(ticket)
        this.UpdateAllTickets()
    end)

    logger.Verbose("Finish Building ConstructorModule")
    return this
end

