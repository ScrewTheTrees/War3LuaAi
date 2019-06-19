require("TreeCore")
require("utils.Utils")

StatsModule = { }

function StatsModule.Create(aiPlayer)
    ---@class StatsModule
    local this = { }
    local logger = TreeCore.CreateLogger("StatsModule.lua")
    logger.Verbose("Started Building StatsModule")

    this.virtualGold = 0
    this.virtualWood = 0

    function this.ResetVirtualEconomy()
        this.virtualGold = this.GetCurrentGold()
        this.virtualWood = this.GetCurrentWood()
    end

    ---@return number
    function this.GetCurrentGold()
        return GetPlayerState(aiPlayer, PLAYER_STATE_RESOURCE_GOLD)
    end
    ---@return number
    function this.GetCurrentWood()
        return GetPlayerState(aiPlayer, PLAYER_STATE_RESOURCE_LUMBER)
    end
    function this.CanAffordUnitVirtual(unitType)
        if (this.virtualGold >= this.GetUnitGoldCost(unitType)) then
            if (this.virtualWood >= this.GetUnitWoodCost(unitType)) then
                this.ReduceVirtualByUnit(unitType)
                return true
            end
        end
        this.ReduceVirtualByUnit(unitType)
        return false
    end
    function this.ReduceVirtualByUnit(unitType)
        this.virtualGold = this.virtualGold - this.GetUnitGoldCost(unitType)
        this.virtualWood = this.virtualWood - this.GetUnitWoodCost(unitType)
    end

    ---@return boolean
    function this.IsUnitDead(unit)
        return GetUnitState(unit, UNIT_STATE_LIFE) <= 0
    end
    ---@return number
    function this.GetUnitGoldCost(unitType)
        return GetUnitGoldCost(unitType)
    end
    ---@return number
    function this.GetUnitWoodCost(unitType)
        return GetUnitWoodCost(unitType)
    end

    logger.Verbose("Finish Building StatsModule")
    return this
end