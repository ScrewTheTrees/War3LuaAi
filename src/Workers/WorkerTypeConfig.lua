require("TreeCore")
require("Param")

WorkerTypeConfig = { }

function WorkerTypeConfig.Create(goldUnitType, woodUnitType, buildUnitType, buildIdleOrder)
    local this = { }
    this.type = "WorkerTypeConfig"
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
    if (true == false) then
        return WorkerTypeConfig.Create()
    end
    return Param.Resolve(param, "WorkerTypeConfig")
end