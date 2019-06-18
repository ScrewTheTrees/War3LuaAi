require("TreeCore")
WorkerDto = { }

function WorkerDto.Create(unit)
    ---@class WorkerDto
    local this = { }

    this.unit = unit
    this.order = Ids.orderTypes.ORDER_IDLE
    this.unitType = Utils.CCInteger(GetUnitTypeId(unit))

    return this
end

