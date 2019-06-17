require("TreeCore")
require("Param")

WorkerDto = { }

function WorkerDto.Create(unit)
    local this = { }
    this.type = "WorkerDto"

    this.unit = unit
    this.order = Ids.orderTypes.ORDER_IDLE
    this.unitType = Utils.CCInteger(GetUnitTypeId(unit))

    return this
end

