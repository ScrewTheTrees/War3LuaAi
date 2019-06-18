require("TreeCore")
require("utils.Utils")
require("utils.TargetingModule")

TownBuildingLocationModule = { }
---@class TownBuildingLocationModule.locationSizes
TownBuildingLocationModule.sizes = {
    TINY = 32,
    SMALL = 96,
    MEDIUM = 128,
}
function TownBuildingLocationModule.Create()
    ---@class TownBuildingLocationModule
    local this = { }
    local logger = TreeCore.CreateLogger("TownBuildingLocationModule.lua")
    local targeting = TargetingModule.Create()

    logger.Verbose("Started Building TownBuildingLocation")

    function this.GetTownBuildingLocation(startX, startY, unitType, builderType, size)
        local stepSize = size
        local range = stepSize
        local x = 0

        startX = math.floor(startX / stepSize) * stepSize
        startY = math.floor(startY / stepSize) * stepSize

        for i = 1, 10000 do
            -- TODO: Check how many of these i actually need.
            if (this.CheckLoc(startX + x, startY - range, unitType, builderType)) then
                return Location(startX + x, startY - range)
            end
            if (this.CheckLoc(startX + x, startY + range, unitType, builderType)) then
                return Location(startX + x, startY + range)
            end
            if (this.CheckLoc(startX - range, startY + x, unitType, builderType)) then
                return Location(startX - range, startY + x)
            end
            if (this.CheckLoc(startX + range, startY + x, unitType, builderType)) then
                return Location(startX + range, startY + x)
            end

            x = x + stepSize
            if (x > range) then
                range = range + stepSize
                x = -range
            end
        end

    end

    function this.CheckLoc(x, y, unitType, builderType)
        local ret = false

        local loc = Location(x, y)
        if (targeting.CanBuildUnitAt(unitType, loc, builderType)) then
            ret = true
        end
        RemoveLocation(loc)

        return ret
    end

    logger.Verbose("Finish Building TownBuildingLocation")
    return this
end

