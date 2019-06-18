require("TreeCore")
require("ArrayList")
require("towns.TownAllocatorList")
require("buildings.BuildingDto")

BuildingAllocatorList = { }

BuildingAllocatorList.statuses = {
    IDLE = "IDLE",
    CONSTRUCTING = "CONSTRUCTING",
    UPGRADING = "UPGRADING",
    TRAINING = "TRAINING",
    RESEARCHING = "RESEARCHING",
}

---@param townAllocator TownAllocatorList
function BuildingAllocatorList.Create(aiPlayer, townAllocator)
    ---@class BuildingAllocatorList : ArrayList
    local this = ArrayList.Create()
    local logger = TreeCore.CreateLogger("BuildingAllocatorList.lua")
    logger.Verbose("Started Building BuildingAllocatorList")
    this.aiTownAllocator = townAllocator

    function this.GetByUnit (unit)
        for i = 1, #this do
            if (this[i].unit == unit) then
                return this.Get(i)
            end
        end
        return nil
    end
    function this.PopByUnit (unit)
        for i = 1, #this do
            if (this[i].unit == unit) then
                return this.Pop(i)
            end
        end
        return nil
    end
    ---@param unitTypeNumber number
    ---@param onlyCompleted boolean @Include only nonConstructing units.
    function this.ListByUnitType(unitTypeNumber, onlyCompleted)
        local list = ArrayList.Create()
        this.ForEach(function(building)
            if (GetUnitTypeId(building.unit) == unitTypeNumber) then
                if ((onlyCompleted and not building.status == BuildingAllocatorList.statuses.CONSTRUCTING) or not onlyCompleted) then
                    list.Push(building)
                end
            end
        end)
        return list
    end

    local halls = Utils.GetStartUnits(aiPlayer, Ids.hallIds)
    this.Push(BuildingDto.Create(halls[1], BuildingAllocatorList.statuses.IDLE, 1))

    logger.Verbose("Finish Building BuildingAllocatorList")

    this.onStartConstruct = {}
    this.onStartConstruct.callbacks = ArrayList.Create()
    this.onStartConstruct.trigger = CreateTrigger()
    this.onStartConstruct.event = TriggerRegisterPlayerUnitEvent(this.onStartConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
    this.onStartConstruct.action = TriggerAddAction(this.onStartConstruct.trigger, function()
        local building = GetTriggerUnit()
        local loc = GetUnitLoc(building)
        this.aiTownAllocator.MakeTown(building)
        local index = this.Push(BuildingDto.Create(building, BuildingAllocatorList.statuses.CONSTRUCTING, this.aiTownAllocator.GetClosestTownId(loc)))
        RemoveLocation(loc)
        this.onStartConstruct.callbacks.ForEach(function(func)
            func(this.Get(index))
        end)
    end)
    this.onCancelConstruct = {}
    this.onCancelConstruct.trigger = CreateTrigger()
    this.onCancelConstruct.event = TriggerRegisterPlayerUnitEvent(this.onCancelConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
    this.onCancelConstruct.action = TriggerAddAction(this.onCancelConstruct.trigger, function()
        local building = GetTriggerUnit()
        this.PopByUnit(building)
    end)
    this.onFinishConstruct = {}
    this.onFinishConstruct.callbacks = ArrayList.Create()
    this.onFinishConstruct.trigger = CreateTrigger()
    this.onFinishConstruct.event = TriggerRegisterPlayerUnitEvent(this.onFinishConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH, nil)
    this.onFinishConstruct.action = TriggerAddAction(this.onFinishConstruct.trigger, function()
        local building = GetTriggerUnit()
        this.GetByUnit(building).status = BuildingAllocatorList.statuses.IDLE
        this.onFinishConstruct.callbacks.ForEach(function(func)
            func(this.GetByUnit(building))
        end)
    end)

    this.onBuildingDie = {}
    this.onBuildingDie.trigger = CreateTrigger()
    this.onBuildingDie.event = TriggerRegisterPlayerUnitEvent(this.onBuildingDie.trigger, aiPlayer, EVENT_PLAYER_UNIT_DEATH, nil)
    this.onBuildingDie.action = TriggerAddAction(this.onBuildingDie.trigger, function()
        local building = GetDyingUnit()
        this.PopByUnit(building)
    end)

    this.onStartTraining = {}
    this.onStartTraining.trigger = CreateTrigger()
    this.onStartTraining.event = TriggerRegisterPlayerUnitEvent(this.onStartTraining.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_START, nil)
    this.onStartTraining.action = TriggerAddAction(this.onStartTraining.trigger, function()
        local struct = this.GetByUnit(GetTriggerUnit())
        struct.status = BuildingAllocatorList.statuses.TRAINING
        struct.targetType = Utils.CCInteger(GetTrainedUnitType())
    end)

    this.onFinishTraining = {}
    this.onFinishTraining.trigger = CreateTrigger()
    this.onFinishTraining.event = TriggerRegisterPlayerUnitEvent(this.onFinishTraining.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_CANCEL, nil)
    this.onFinishTraining.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishTraining.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_FINISH, nil)
    this.onFinishTraining.action = TriggerAddAction(this.onFinishTraining.trigger, function()
        local struct = this.GetByUnit(GetTriggerUnit())
        struct.status = BuildingAllocatorList.statuses.IDLE
        struct.targetType = nil
    end)

    this.onStartUpgrade = {}
    this.onStartUpgrade.trigger = CreateTrigger()
    this.onStartUpgrade.event = TriggerRegisterPlayerUnitEvent(this.onStartUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_START, nil)
    this.onStartUpgrade.action = TriggerAddAction(this.onStartUpgrade.trigger, function()
        local struct = this.GetByUnit(GetTriggerUnit())
        struct.status = BuildingAllocatorList.statuses.UPGRADING
        struct.targetType = "?"
    end)

    this.onFinishUpgrade = {}
    this.onFinishUpgrade.trigger = CreateTrigger()
    this.onFinishUpgrade.event = TriggerRegisterPlayerUnitEvent(this.onFinishUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_FINISH, nil)
    this.onFinishUpgrade.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_CANCEL, nil)
    this.onFinishUpgrade.action = TriggerAddAction(this.onFinishUpgrade.trigger, function()
        local struct = this.GetByUnit(GetTriggerUnit())
        struct.status = BuildingAllocatorList.statuses.IDLE
        struct.targetType = nil
    end)

    this.onStartResearch = {}
    this.onStartResearch.trigger = CreateTrigger()
    this.onStartResearch.event = TriggerRegisterPlayerUnitEvent(this.onStartResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_START, nil)
    this.onStartResearch.action = TriggerAddAction(this.onStartResearch.trigger, function()
        local struct = this.GetByUnit(GetResearchingUnit())
        struct.status = BuildingAllocatorList.statuses.RESEARCHING
        struct.targetType = Utils.CCInteger(GetResearched())
    end)

    this.onFinishResearch = {}
    this.onFinishResearch.trigger = CreateTrigger()
    this.onFinishResearch.event = TriggerRegisterPlayerUnitEvent(this.onFinishResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_FINISH, nil)
    this.onFinishResearch.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_CANCEL, nil)
    this.onFinishResearch.action = TriggerAddAction(this.onFinishUpgrade.trigger, function()
        local struct = this.GetByUnit(GetResearchingUnit())
        struct.status = BuildingAllocatorList.statuses.IDLE
        struct.targetType = nil
    end)

    return this
end

