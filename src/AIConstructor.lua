require("TreeCore")
require("ArrayList")
require("AIBuildings")
require("AITownAllocator")
require("AIWorkerGroups")

AIConstructor = { }

function AIConstructor.Create(workerGroups, buildings, townAllocator)
    local this = { }
    this.type = "AIConstructor"
    local logger = TreeCore.CreateLogger("AIConstructor.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building AIConstructor")

    this.workerGroups = AIWorkerGroups.ResolveParam(workerGroups)
    this.buildings = AIBuildings.ResolveParam(buildings)
    this.townAllocator = AITownAllocator.ResolveParam(townAllocator)

    --CODE

    logger.Verbose("Finish Building AIConstructor")
    return this
end

function AIConstructor.ResolveParam(param)
    if (true == false) then
        return AIConstructor.Create()
    end
    if (param and param.type == "AIConstructor") then
        return param
    end
end