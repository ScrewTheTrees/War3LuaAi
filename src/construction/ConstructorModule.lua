require("TreeCore")
require("Param")
require("ArrayList")
require("buildings.BuildingAllocatorList")
require("towns.TownAllocator")
require("workers.WorkerGroupsList")

ConstructorModule = { }

function ConstructorModule.Create(workerGroups, buildings, townAllocator)
    local this = { }
    this.type = "ConstructorModule"
    local logger = TreeCore.CreateLogger("ConstructorModule.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building ConstructorModule")

    this.workerGroups = WorkerGroupsList.ResolveParam(workerGroups)
    this.buildings = BuildingAllocatorList.ResolveParam(buildings)
    this.townAllocator = TownAllocator.ResolveParam(townAllocator)

    --CODE

    logger.Verbose("Finish Building ConstructorModule")
    return this
end

function ConstructorModule.ResolveParam(param)
    if (true == false) then
        return ConstructorModule.Create()
    end
    return Param.Resolve(param, "ConstructorModule")
end