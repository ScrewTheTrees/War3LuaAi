require("TreeCore")
require("Param")
require("ArrayList")
require("buildings.BuildingsAllocator")
require("towns.TownAllocator")
require("workers.WorkerGroups")

Constructor = { }

function Constructor.Create(workerGroups, buildings, townAllocator)
    local this = { }
    this.type = "Constructor"
    local logger = TreeCore.CreateLogger("Constructor.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building Constructor")

    this.workerGroups = WorkerGroups.ResolveParam(workerGroups)
    this.buildings = BuildingsAllocator.ResolveParam(buildings)
    this.townAllocator = TownAllocator.ResolveParam(townAllocator)

    --CODE

    logger.Verbose("Finish Building Constructor")
    return this
end

function Constructor.ResolveParam(param)
    if (true == false) then
        return Constructor.Create()
    end
    return Param.Resolve(param, "Constructor")
end