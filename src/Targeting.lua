require("TreeCore")
require("Utils")

Targeting = { }
Targeting.__index = Targeting
Targeting.builders = {}

function Targeting.Create()
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("Targeting.lua")

    function Targeting.builders.Get(builderType)
        if not (Targeting.builders[builderType]) then
            local worker = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), Utils.FourCC(builderType), 32000, 32000, 0)
            Targeting.builders[builderType] = worker
            SetUnitInvulnerable(worker, true)
            ShowUnit(worker, false)
        end
        return Targeting.builders[builderType]
    end

    logger.Verbose("Started Building AITargeting")

    function this.CanBuildUnitAt(unitType, location, builderType)
        local builder = Targeting.builders.Get(builderType)
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

function Targeting.ResolveParam(param)
    if (param) then
        local this = Targeting.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end