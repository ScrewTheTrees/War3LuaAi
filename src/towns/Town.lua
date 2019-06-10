require("TreeCore")
require("Param")

Town = { }

function Town.Create(location, hall, mine)
    local this = { }
    this.type = "Town"
    local logger = TreeCore.CreateLogger("Town.lua")
    logger.Verbose("Started Building Town")

    this.location = location
    this.hall = hall
    this.mine = mine

    logger.Verbose("Finish Building Town")
    return this
end

function Town.ResolveParam(param)
    if (true == false) then
        return Town.Create()
    end
    return Param.Resolve(param, "Town")
end