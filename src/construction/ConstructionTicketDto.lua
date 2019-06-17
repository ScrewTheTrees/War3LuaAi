require("TreeCore")

ConstructionTicketDto = { }

function ConstructionTicketDto.Create(worker, building)
    local this = { }
    this.type = "ConstructionTicketDto"

    this.worker = worker
    this.building = building

    return this
end