require("TreeCore")
require("Param")
require("ArrayList")
require("buildings.BuildingAllocatorList")
require("towns.TownAllocatorList")
require("workers.WorkerGroupsList")

ConstructorModule = { }

function ConstructorModule.Create(workerGroups, buildings, townAllocator)
    local this = { }
    local logger = TreeCore.CreateLogger("ConstructorModule.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building ConstructorModule")

    this.workerGroups = workerGroups
    this.buildings = buildings
    this.townAllocator = townAllocator

    --CODE

    logger.Verbose("Finish Building ConstructorModule")
    return this
end

