require("TreeCore")

TownDto = { }

function TownDto.Create(location, hall, mine)
    ---@class TownDto
    local this = { }

    this.location = location
    this.hall = hall
    this.mine = mine

    return this
end