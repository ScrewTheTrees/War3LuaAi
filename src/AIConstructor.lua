require("TreeCore")
require("ArrayList")
require("AIBuildings")
require("AITownAllocator")
require("AIWorkerGroups")

AIConstructor = { }
AIConstructor.__index = AIConstructor

function AIConstructor.Create(workerGroups, buildings, townAllocator)
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("AIConstructor.lua")

    this.orders = ArrayList.Create()


    logger.Verbose("Started Building AIConstructor")

    this.workerGroups = AIWorkerGroups.ResolveParam(workerGroups)
    this.buildings = AIBuildings.ResolveParam(buildings)
    this.townAllocator = AITownAllocator.ResolveParam(townAllocator)

    this.workerGroups.

    --CODE

    logger.Verbose("Finish Building AIConstructor")
    return this
end

function AIConstructor.ResolveParam(param)
    if (param) then
        local this = AIConstructor.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end