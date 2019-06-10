require("TreeCore")
require("Param")

Worker = { }

function Worker.Create(unit)
    local this = { }
    this.type = "Worker"
    local logger = TreeCore.CreateLogger("Worker.lua")
    logger.Verbose("Started Building Worker")

    this.unit = unit
    this.order = Ids.orderTypes.ORDER_IDLE
    this.unitType = Utils.CCInteger(GetUnitTypeId(unit))
    --CODE

    logger.Verbose("Finish Building Worker")
    return this
end

function Worker.ResolveParam(param)
    if (true == false) then
        return Worker.Create()
    end
    return Param.Resolve(param, "Worker")
end