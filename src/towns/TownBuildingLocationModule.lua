require("TreeCore")
require("utils.Utils")
require("utils.TargetingModule")

TownBuildingLocationModule = { }
---@class TownBuildingLocationModule.locationSizes
TownBuildingLocationModule.sizes = {
    TINY = 64,
    SMALL = 256,
    MEDIUM = 384,
    LARGE = 512,
}
function TownBuildingLocationModule.Create()
    ---@class TownBuildingLocationModule
    local this = { }
    local logger = TreeCore.CreateLogger("TownBuildingLocationModule.lua")
    local targeting = TargetingModule.Create()

    logger.Verbose("Started Building TownBuildingLocation")

    function this.GetTownBuildingLocationByLoc(location, unitType, builderType, size)
        return this.GetTownBuildingLocation(GetLocationX(location), GetLocationY(location), unitType, builderType, size)
    end

    function this.GetTownBuildingLocation(startX, startY, unitType, builderType, size)
        local stepSize = size
        local range = stepSize
        local x = 0

        startX = math.floor(startX / stepSize) * stepSize
        startY = math.floor(startY / stepSize) * stepSize

        for i = 1, 10000 do
            -- TODO: Check how many of these i actually need.
            if (this.CheckLocXY(startX + x, startY - range, unitType, builderType)) then
                return Location(startX + x, startY - range)
            end
            if (this.CheckLocXY(startX + x, startY + range, unitType, builderType)) then
                return Location(startX + x, startY + range)
            end
            if (this.CheckLocXY(startX - range, startY + x, unitType, builderType)) then
                return Location(startX - range, startY + x)
            end
            if (this.CheckLocXY(startX + range, startY + x, unitType, builderType)) then
                return Location(startX + range, startY + x)
            end

            x = x + stepSize
            if (x > range) then
                range = range + stepSize
                x = -range
            end
        end

    end

    function this.CheckLocXY(x, y, unitType, builderType)
        local ret = false

        local location = Location(x, y)
        if (targeting.CanBuildUnitAt(unitType, location, builderType)) then
            ret = true
        end
        RemoveLocation(loc)

        return ret
    end

    function this.CheckLocation(location, unitType, builderType)
        local ret = false

        if (targeting.CanBuildUnitAt(unitType, location, builderType)) then
            ret = true
        end

        return ret
    end

    logger.Verbose("Finish Building TownBuildingLocation")
    return this
end

