require("TreeCore")
require("Utils")
require("Targeting")

AITownBuildingLocation = { }
AITownBuildingLocation.__index = AITownBuildingLocation
AITownBuildingLocation.sizes = {
    TINY = 32,
    SMALL = 64,
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

        for i = 1, 10000 do -- TODO: Check how many of these i actually need.
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

    logger.Verbose("Finish Building AITownBuildingLocation")
    return this
end