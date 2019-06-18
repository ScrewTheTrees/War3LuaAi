BuildingDto = { }

function BuildingDto.Create(unit, status, townIndex)
    ---@class BuildingDto
    local this = { }

    this.unit = unit
    this.status = status
    this.targetType = nil
    this.townIndex = townIndex

    return this
end