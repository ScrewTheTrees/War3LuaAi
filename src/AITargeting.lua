require("TreeCore")
require("Utils")

AITargeting = { }
AITargeting.__index = AITargeting

function AITargeting.Create()
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("AITargeting.lua")

    logger.Verbose("Started Building AITargeting")

    function this.CanBuildUnitAt(unitType, location, builderType)
        local builder = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), Utils.FourCC(builderType), 0, 0, 0)
        local order = IssueBuildOrderById(builder, Utils.FourCC(unitType), GetLocationX(location), GetLocationY(location))
        RemoveUnit(builder)
        return order
    end
    function this.GetPathingAt(location, pathingType)
        return not IsTerrainPathable(GetLocationX(location), GetLocationY(location), pathingType)
    end

    logger.Verbose("Finish Building AITargeting")
    return this
end