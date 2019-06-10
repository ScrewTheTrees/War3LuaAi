require("TreeCore")
require("Param")

ConstructionTicket = { }

function ConstructionTicket.Create(worker, building)
    local this = { }
    this.type = "ConstructionTicket"
    local logger = TreeCore.CreateLogger("ConstructionTicket.lua")
    logger.Verbose("Started Building ConstructionTicket")

    this.worker = Worker.ResolveParam(worker)
    this.building = building

    logger.Verbose("Finish Building ConstructionTicket")
    return this
end

function ConstructionTicket.ResolveParam(param)
    if (true == false) then
        return ConstructionTicket.Create()
    end
    return Param.Resolve(param, "ConstructionTicket")
end