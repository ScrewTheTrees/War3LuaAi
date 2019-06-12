require("TreeCore")
require("Param")

ConstructionTicketDto = { }

function ConstructionTicketDto.Create(worker, building)
    local this = { }
    this.type = "ConstructionTicketDto"

    this.worker = WorkerDto.ResolveParam(worker)
    this.building = building

    return this
end

function ConstructionTicketDto.ResolveParam(param)
    if (true == false) then
        return ConstructionTicketDto.Create()
    end
    return Param.Resolve(param, "ConstructionTicketDto")
end