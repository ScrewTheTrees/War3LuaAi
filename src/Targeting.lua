require("TreeCore")
require("Utils")

Targeting = { }
Targeting.__index = Targeting

function Targeting.Create()
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("Targeting.lua")

    local builders = {}
    function builders.Get(builderType)
        if not (builders[builderType]) then
            local worker = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), Utils.FourCC(builderType), 32000, 32000, 0)
            builders[builderType] = worker
            SetUnitInvulnerable(worker, true)
            ShowUnit(worker, false)
        end
        return builders[builderType]
    end

    logger.Verbose("Started Building AITargeting")

    function this.CanBuildUnitAt(unitType, location, builderType)
        local builder = builders.Get(builderType)
        ShowUnit(worker, true)
        local order = IssueBuildOrderById(builder, Utils.FourCC(unitType), GetLocationX(location), GetLocationY(location))
        IssueImmediateOrder(builder, "hold")
        ShowUnit(worker, false)
        return order
    end
    function this.GetPathingAt(location, pathingType)
        return not IsTerrainPathable(GetLocationX(location), GetLocationY(location), pathingType)
    end

    logger.Verbose("Finish Building AITargeting")
    return this
end