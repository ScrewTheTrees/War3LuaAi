require("TreeCore")

ConstructionTicketDto = { }

---@param worker WorkerDto
---@param targetType string
---@param townId number
---@param buildingLocationSize TownBuildingLocationModule.locationSizes
function ConstructionTicketDto.Create(worker, targetType, townId, buildingLocationSize)
    ---@class ConstructionTicketDto
    local this = { }

    this.worker = worker
    this.targetType = targetType
    this.townId = townId
    this.buildingLocationSize = buildingLocationSize

    this.target = nil
    this.targetLocation = nil

    function this.ReplaceLocation(location)
        if (this.targetLocation) then
            RemoveLocation(this.targetLocation)
        end
        this.targetLocation = location
    end

    return this
end