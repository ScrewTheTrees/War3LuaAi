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

---@param workerGroups WorkerGroupsList
---@param buildings BuildingAllocatorList
---@param townAllocator TownAllocatorList
---@param workerHandlerModule WorkerHandlerModule
---@param statsModule StatsModule
function ConstructorModule.Create(aiPlayer, workerGroups, buildings, townAllocator, workerHandlerModule, statsModule)
    ---@class ConstructorModule
    local this = { }
    local logger = TreeCore.CreateLogger("ConstructorModule.lua")

    logger.Verbose("Started Building ConstructorModule")

    this.workerGroups = workerGroups
    this.buildings = buildings
    this.townAllocator = townAllocator
    this.workerHandlerModule = workerHandlerModule
    this.statsModule = statsModule
    this.constructionList = ConstructionsList.Create()
    this.buildingLocation = TownBuildingLocationModule.Create()

    ---@param buildingType string
    ---@param amount number
    ---@param townId number
    ---@param buildingLocationSize TownBuildingLocationModule.locationSizes
    function this.ConstructBuildingAsQuery(buildingType, amount, townId, buildingLocationSize)
        if (townId < 1) then
            townId = math.random(1, this.townAllocator.Size())
        end
        ---@type TownDto
        if (#this.constructionList.ListNoTarget() == 0) and this.ResolveUnitsInConstruction(buildingType) < amount then
            this.UpdateAllTickets()
            if (this.statsModule.CanAffordUnitVirtual(Utils.FourCC(buildingType))) then
                local worker = this.workerGroups.GetIdleConstructor()

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
        local town = townAllocator.GetOrFirst(ticket.townId)
        local worker = ticket.worker
        local buildLoc = this.buildingLocation.GetTownBuildingLocationByLoc(town.location, ticket.targetType, this.workerGroups.workerTypeConfig.build, ticket.buildingLocationSize)
        ticket.ReplaceLocation(buildLoc)
        IssueBuildOrderById(worker.unit, Utils.FourCC(ticket.targetType), GetLocationX(buildLoc), GetLocationY(buildLoc))
        this.UpdateAllTickets()
    end

    function this.ResolveWorkers()
        this.workerGroups.ReplaceWorkerOrder(Ids.orderTypes.ORDER_BUILD, this.workerGroups.workerTypeConfig.buildIdleOrder)
        ---@param ticket ConstructionTicketDto
        this.constructionList.ForEach(function(ticket)
            if (ticket.worker) then
                ticket.worker.order = Ids.orderTypes.ORDER_BUILD
                if (not ticket.target) and (not this.buildingLocation.CheckLocation(ticket.targetLocation, ticket.targetType, this.workerGroups.workerTypeConfig.build)) then
                    local town = townAllocator.GetOrFirst(ticket.townId)
                    ticket.ReplaceLocation(this.buildingLocation.GetTownBuildingLocationByLoc(town.location, ticket.targetType, this.workerGroups.workerTypeConfig.build, ticket.buildingLocationSize))
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
        this.workerHandlerModule.UpdateOrdersForWorkers()
    end

    function this.RemoveInactiveTicketTargets()
        ---@param ticket ConstructionTicketDto
        this.constructionList.ForEach(function(ticket)
            if (ticket.worker) then
                if (ticket.worker.order == Ids.orderTypes.ORDER_DEAD) then
                    if (ticket.target) then
                        ticket.worker = this.workerGroups.GetIdleConstructor() --Nil or actual worker
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
    this.buildings.onStartConstruct.callbacks.Push(function(buildingDto)
        local ticket = this.GetUnusedTicketByUnitType(Utils.CCInteger(GetUnitTypeId(buildingDto.unit)))
        ticket.target = buildingDto.unit
    end)
    ---@param buildingDto BuildingDto
    this.buildings.onFinishConstruct.callbacks.Push(function(buildingDto)
        local ticket = this.constructionList.GetByTarget(buildingDto.unit)
        this.RemoveTicket(ticket)
        this.UpdateAllTickets()
    end)

    logger.Verbose("Finish Building ConstructorModule")
    return this
end

