require("TreeCore")
WorkerTypeConfigDto = { }

function WorkerTypeConfigDto.Create(goldUnitType, woodUnitType, buildUnitType, buildIdleOrder)
    ---@class WorkerTypeConfigDto
    local this = { }

    this.gold = goldUnitType
    this.wood = woodUnitType
    this.build = buildUnitType
    this.buildIdleOrder = buildIdleOrder

    return this
end

