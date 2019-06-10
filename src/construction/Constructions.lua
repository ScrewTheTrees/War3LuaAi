require("TreeCore")
require("Param")
require("ArrayList")

Constructions = { }

function Constructions.Create()
    local this = ArrayList.Create()
    this.type = "Constructions"
    local logger = TreeCore.CreateLogger("Constructions.lua")
    logger.Verbose("Started Building Constructions")

    --CODE

    logger.Verbose("Finish Building Constructions")
    return this
end

function Constructions.ResolveParam(param)
    if (true == false) then
        return Constructions.Create()
    end
    return Param.Resolve(param, "Constructions")
end