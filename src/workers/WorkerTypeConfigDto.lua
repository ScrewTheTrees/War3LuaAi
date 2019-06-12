require("TreeCore")
require("Param")

WorkerTypeConfig = { }

function WorkerTypeConfig.Create(goldUnitType, woodUnitType, buildUnitType, buildIdleOrder)
    local this = { }
    this.type = "WorkerTypeConfig"

    this.gold = goldUnitType
    this.wood = woodUnitType
    this.build = buildUnitType
    this.buildIdleOrder = buildIdleOrder

    return this
end

function WorkerTypeConfig.ResolveParam(param)
    if (true == false) then
        return WorkerTypeConfig.Create()
    end
    return Param.Resolve(param, "WorkerTypeConfig")
end