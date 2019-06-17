require("TreeCore")
require("Param")
require("utils.Utils")

TargetingModule = { }
TargetingModule.builders = {}

---@class TargetingModule
function TargetingModule.Create()
    local this = { }
    local logger = TreeCore.CreateLogger("TargetingModule.lua")

    function TargetingModule.builders.Get(builderType)
        if not (TargetingModule.builders[builderType]) then
            local worker = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), Utils.FourCC(builderType), 32000, 32000, 0)
            TargetingModule.builders[builderType] = worker
            SetUnitInvulnerable(worker, true)
            ShowUnit(worker, false)
        end
        return TargetingModule.builders[builderType]
    end

    logger.Verbose("Started Building AITargeting")

    function this.CanBuildUnitAt(unitType, location, builderType)
        local builder = TargetingModule.builders.Get(builderType)
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

