require("TreeCore")

WorkerTypeConfig = { }
WorkerTypeConfig.__index = WorkerTypeConfig

function WorkerTypeConfig.Create(goldUnitType, woodUnitType, buildUnitType, buildIdleOrder)
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("WorkerTypeConfig.lua")
    logger.Verbose("Started Building WorkerTypeConfig")

    this.gold = goldUnitType
    this.wood = woodUnitType
    this.build = buildUnitType
    this.buildIdleOrder = buildIdleOrder

    logger.Verbose("Finish Building WorkerTypeConfig")
    return this
end

function WorkerTypeConfig.ResolveParam(param)
    if (param) then
        local this = WorkerTypeConfig.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end