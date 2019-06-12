require("TreeCore")
require("Param")

TownDto = { }

function TownDto.Create(location, hall, mine)
    local this = { }
    this.type = "TownDto"

    this.location = location
    this.hall = hall
    this.mine = mine

    return this
end

function TownDto.ResolveParam(param)
    if (true == false) then
        return TownDto.Create()
    end
    return Param.Resolve(param, "TownDto")
end