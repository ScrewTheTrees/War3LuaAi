require("TreeCore")

TownDto = { }

---@class TownDto
function TownDto.Create(location, hall, mine)
    local this = { }

    this.location = location
    this.hall = hall
    this.mine = mine

    return this
end