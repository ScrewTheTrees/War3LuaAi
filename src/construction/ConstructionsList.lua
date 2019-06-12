require("TreeCore")
require("Param")
require("ArrayList")

ConstructionsList = { }

function ConstructionsList.Create()
    local this = ArrayList.Create()
    this.type = "ConstructionsList"
    local logger = TreeCore.CreateLogger("ConstructionsList.lua")
    logger.Verbose("Started Building ConstructionsList")

    --CODE

    logger.Verbose("Finish Building ConstructionsList")
    return this
end

function ConstructionsList.ResolveParam(param)
    if (true == false) then
        return ConstructionsList.Create()
    end
    return Param.Resolve(param, "ConstructionsList")
end