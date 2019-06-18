require("TreeCore")
require("utils.Utils")
require("ArrayList")
require("buildings.BuildingAllocatorList")
require("towns.TownAllocatorList")
require("towns.TownBuildingLocationModule")
require("workers.WorkerGroupsList")
require("construction.ConstructionsList")
require("construction.ConstructionTicketDto")

ConstructorModule = { }
ConstructorModule.errors = {

}

---@param workerGroups WorkerGroupsList
---@param buildings BuildingAllocatorList
---@param townAllocator TownAllocatorList
---@class ConstructorModule
function ConstructorModule.Create(aiPlayer, workerGroups, buildings, townAllocator)
    local this = { }
    local logger = TreeCore.CreateLogger("ConstructorModule.lua")

    logger.Verbose("Started Building ConstructorModule")

    this.workerGroups = workerGroups
    this.buildings = buildings
    this.townAllocator = townAllocator
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
        if (this.ResolveUnitsInConstruction(buildingType) < amount) then
            local worker = this.workerGroups.GetIdleConstructor()

            if (worker) then
                local index = this.constructionList.Push(ConstructionTicketDto.Create(worker, buildingType, townId, buildingLocationSize))
                print(this.ResolveUnitsInConstruction(buildingType), "<", amount)
                this.UpdateConstructionTicket(index)
            end
        end
    end

    ---@param index number
    function this.UpdateConstructionTicket(index)
        ---@type ConstructionTicketDto
        local ticket = this.constructionList.Get(index)
        local town = townAllocator.GetOrFirst(ticket.townId)
        local worker = ticket.worker
        local buildLoc = this.buildingLocation.GetTownBuildingLocation(GetLocationX(town.location), GetLocationY(town.location), ticket.targetType, worker.unitType, ticket.buildingLocationSize)
        IssueBuildOrderById(worker.unit, Utils.FourCC(ticket.targetType), GetLocationX(buildLoc), GetLocationY(buildLoc))
        worker.order = Ids.orderTypes.ORDER_BUILD
        print(Utils.CreateJson(worker, 2))
        print(GetLocationX(buildLoc), GetLocationY(buildLoc))
    end

    function this.ResolveUnitsInConstruction(unitType)
        return #Utils.GetUnitsOfTypeByPlayer(unitType, aiPlayer)
    end

    logger.Verbose("Finish Building ConstructorModule")
    return this
end

