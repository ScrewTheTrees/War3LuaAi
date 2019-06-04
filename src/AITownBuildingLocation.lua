require("TreeCore")
require("AITownBuildingLocationCache")
require("Utils")
require("Targeting")

AITownBuildingLocation = { }
AITownBuildingLocation.__index = AITownBuildingLocation
AITownBuildingLocation.sizes = {
    TINY = 64,
    SMALL = 128,
    MEDIUM = 192,
    LARGE = 256,
}

function AITownBuildingLocation.Create()
    local this = { }

    --Constants
    local logger = TreeCore.CreateLogger("AITownBuildingLocation.lua")
    local targeting = Targeting.Create()


    logger.Verbose("Started Building AITownBuildingLocation")

    function this.GetTownBuildingLocation(startX, startY, unitType, builderType, size)
        local stepSize = size
        local range = stepSize
        local x = 0

        startX = math.floor(startX / stepSize) * stepSize
        startY = math.floor(startY / stepSize) * stepSize

        for i = 1, 1000 do
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

        if (AITownBuildingLocationCache.Get(unitType, x, y)) then
            return true
        end
        local loc = Location(x, y)
        if (targeting.CanBuildUnitAt(unitType, loc, builderType)) then
            ret = true
        else
            AITownBuildingLocationCache.Set(unitType, x, y)
        end
        RemoveLocation(loc)

        return ret
    end

    logger.Verbose("Finish Building AITownBuildingLocation")
    return this
end