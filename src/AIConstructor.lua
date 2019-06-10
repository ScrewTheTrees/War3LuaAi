require("TreeCore")
require("Param")
require("utils.ArrayList")
require("Buildings")
require("Towns.TownAllocator")
require("Workers.WorkerGroups")

AIConstructor = { }

function AIConstructor.Create(workerGroups, buildings, townAllocator)
    local this = { }
    this.type = "AIConstructor"
    local logger = TreeCore.CreateLogger("AIConstructor.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building AIConstructor")

    this.workerGroups = WorkerGroups.ResolveParam(workerGroups)
    this.buildings = Buildings.ResolveParam(buildings)
    this.townAllocator = TownAllocator.ResolveParam(townAllocator)

    --CODE

    logger.Verbose("Finish Building AIConstructor")
    return this
end

function AIConstructor.ResolveParam(param)
    if (true == false) then
        return AIConstructor.Create()
    end
    return Param.Resolve(param, "AIConstructor")
end