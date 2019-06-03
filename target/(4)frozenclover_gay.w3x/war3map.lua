-- ceres header start

local ceres = {
}

local __ceres_hooks = {
    ["main::before"] = {},
    ["main::after"] = {},
    ["config::before"] = {},
    ["config::after"] = {}
}

local function __ceres_hookCall(hookName)
    for _, callback in pairs(__ceres_hooks[hookName]) do
        callback()
    end
end

local __ceres_customMain = nil
local __ceres_customConfig = nil

local function __ceresMain()
    __ceres_hookCall("main::before")
    if __ceres_customMain ~= nil then
        __ceres_customMain()
    else
        ceres.__oldMain()
    end
    __ceres_hookCall("main::after")
end

local function __ceresConfig()
    __ceres_hookCall("config::before")
    if __ceres_customConfig ~= nil then
        __ceres_customConfig()
    else
        ceres.__oldConfig()
    end
    __ceres_hookCall("config::after")
end

function ceres.addHook(hookName, callback)
    table.insert(__ceres_hooks[hookName], ceres.wrapCatch(callback))
end

function ceres.setMain(callback)
    __ceres_customMain = callback
end

function ceres.setConfig(callback)
    __ceres_customConfig = callback
end

function ceres.catch(callback, ...)
    local success, err = pcall(callback, ...)

    if not success then
        print(err)
    end
end

function ceres.wrapCatch(callback)
    return function(...)
        ceres.catch(callback, ...)
    end
end

local __modules = {}

require = function(name)
    local module = __modules[name]

    if module ~= nil then
        if module.initialized then
            return module.cached
        else
            module.initialized = true
            module.cached = module.loader()
            return module.cached
        end
    else
        error("module not found")
    end
end

-- ceres header end
gg_trg_Melee_Initialization = nil
function InitGlobals()
end

function Unit000020_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000022_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000029_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000031_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000033_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000034_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000037_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000042_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000043_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000045_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000046_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000051_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000057_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000059_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000062_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000067_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000070_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000074_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000075_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000076_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000080_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000090_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000092_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000093_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000094_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000095_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000096_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000103_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000104_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000105_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000107_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000110_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000115_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000121_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000129_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000132_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000133_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000134_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000136_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000144_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000145_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000146_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000151_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000156_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000157_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000160_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000163_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function Unit000166_DropItems()
    local trigWidget = nil
    local trigUnit = nil
    local itemID = 0
    local canDrop = true
    trigWidget = bj_lastDyingWidget
    if (trigWidget == nil) then
        trigUnit = GetTriggerUnit()
    end
    if (trigUnit ~= nil) then
        canDrop = not IsUnitHidden(trigUnit)
        if (canDrop and GetChangingUnit() ~= nil) then
            canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
        end
    end
    if (canDrop) then
        RandomDistReset()
        RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
        itemID = RandomDistChoose()
        if (trigUnit ~= nil) then
            UnitDropItem(trigUnit, itemID)
        else
            WidgetDropItem(trigWidget, itemID)
        end
    end
    bj_lastDyingWidget = nil
    DestroyTrigger(GetTriggeringTrigger())
end

function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, FourCC("nwna"), -7166.9, -7497.0, 54.480)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000144_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), -7193.4, -7274.6, 31.507)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), -6895.0, -7584.9, 86.558)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 6929.1, -7477.5, 121.507)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 7239.4, -7179.1, 176.558)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwna"), 7151.5, -7451.0, 144.480)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000132_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), -3234.7, 2994.8, 132.380)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), -109.0, -2233.6, 280.257)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), 73.9, -2213.3, 263.031)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -8.3, -2401.7, 275.630)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000020_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), -1458.5, -7109.3, 48.554)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), -1269.9, -7184.3, 81.194)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -1396.8, -7306.3, 69.010)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000037_DropItems)
    u = CreateUnit(p, FourCC("nska"), 11.3, 1689.4, 100.257)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), -776.5, -4243.9, 343.848)
    u = CreateUnit(p, FourCC("nnwa"), 3424.7, -7309.3, 99.213)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), 3209.1, -7321.8, 70.291)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 3194.5, -7555.0, 129.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000096_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 3438.1, -7529.7, 129.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000095_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), 3186.0, -3622.6, 312.380)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 3457.4, -3400.3, 280.220)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nrvs"), 3331.9, -3523.3, 294.780)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000034_DropItems)
    u = CreateUnit(p, FourCC("nnwr"), 3460.9, -3650.6, 324.433)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 3330.5, 3186.4, 42.380)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 720.0, 7133.7, 249.010)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000075_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 824.6, -7498.8, 110.118)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), 593.2, 7011.7, 261.194)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 1025.5, -7418.8, 131.869)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), 2515.2, -1731.3, 193.570)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000157_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), 781.8, 6936.7, 228.554)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 5668.5, -5735.3, 149.505)
    u = CreateUnit(p, FourCC("nskm"), 5510.9, 5594.5, 230.051)
    u = CreateUnit(p, FourCC("nskm"), 5744.5, 5316.1, 200.641)
    u = CreateUnit(p, FourCC("nskm"), -6123.9, -5989.7, 20.641)
    u = CreateUnit(p, FourCC("nskm"), -5890.3, -6268.1, 50.051)
    u = CreateUnit(p, FourCC("nskm"), 5432.2, -6011.5, 120.096)
    u = CreateUnit(p, FourCC("nwwd"), 5483.9, -5789.0, 135.630)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000110_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 7080.5, -7625.9, 126.477)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7341.8, -7426.0, 36.477)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwq"), -907.4, -4538.7, 353.654)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000129_DropItems)
    u = CreateUnit(p, FourCC("nnws"), -570.4, -4530.4, 5.604)
    u = CreateUnit(p, FourCC("nnwl"), -677.5, -4781.0, 25.038)
    u = CreateUnit(p, FourCC("nwna"), -7124.1, 6883.1, 324.480)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000145_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), -6901.8, 6909.6, 301.507)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), -7212.1, 6611.2, 356.558)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7053.1, 7058.0, 306.477)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwna"), 7277.7, 6869.4, 234.480)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000146_DropItems)
    u = CreateUnit(p, FourCC("nnwa"), -3296.7, 6751.9, 271.891)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwg"), 2850.3, 6725.7, 306.953)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000043_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), 3769.4, -622.9, 64.787)
    u = CreateUnit(p, FourCC("nnwl"), -3450.4, -3415.6, 222.380)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), -3228.0, -3687.0, 190.220)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), -1691.3, 30.2, 190.257)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), -1671.0, -152.7, 173.031)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -916.4, 7054.4, 290.118)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -1117.4, 6974.3, 311.869)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -973.3, 6889.2, 317.510)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000070_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), -7078.0, 637.2, 318.554)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -6899.2, -1079.0, 38.613)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000080_DropItems)
    u = CreateUnit(p, FourCC("nskm"), -7005.6, -1208.2, 32.972)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7292.8, -3551.0, 39.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000104_DropItems)
    u = CreateUnit(p, FourCC("nskm"), -7053.6, -997.3, 11.221)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), -7153.1, 448.6, 351.194)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), 2572.6, -1601.9, 210.205)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), 2683.8, -1784.9, 181.831)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), -1530.3, -2546.2, 125.825)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000160_DropItems)
    u = CreateUnit(p, FourCC("nska"), -1388.9, -2550.3, 142.460)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), -1516.0, -2722.6, 114.086)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7267.5, -3794.6, 39.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000103_DropItems)
    u = CreateUnit(p, FourCC("nskm"), -3332.2, -7313.8, 68.695)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwg"), -3418.1, -7074.9, 66.490)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000107_DropItems)
    u = CreateUnit(p, FourCC("nwwg"), -3111.2, -7144.8, 101.970)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000046_DropItems)
    u = CreateUnit(p, FourCC("nwwg"), 6947.8, -3635.1, 218.680)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000093_DropItems)
    u = CreateUnit(p, FourCC("nnwa"), 6998.0, 2967.8, 189.213)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwg"), 7023.3, -3940.6, 183.200)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000092_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 7198.1, -3756.6, 185.405)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), 7010.6, 2752.1, 160.291)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwg"), -6963.6, 2887.7, 26.846)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000105_DropItems)
    u = CreateUnit(p, FourCC("nwwg"), -6974.8, 3202.2, 351.366)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000090_DropItems)
    u = CreateUnit(p, FourCC("nskm"), -7183.7, 3057.9, 353.572)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -7059.6, -3565.6, 340.291)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 7243.7, 2737.6, 219.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000094_DropItems)
    u = CreateUnit(p, FourCC("nnwa"), -3081.2, 6736.9, 242.969)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -3037.1, 6966.3, 302.238)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000133_DropItems)
    u = CreateUnit(p, FourCC("nskm"), -3281.9, 6972.2, 302.238)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000134_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), 326.3, 3882.9, 154.787)
    u = CreateUnit(p, FourCC("nwwg"), 3157.9, 6792.0, 271.473)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000042_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 2965.9, 6921.7, 273.678)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -7047.1, -3781.2, 9.213)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwq"), 4039.9, -798.6, 74.592)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000121_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 7218.4, 2981.1, 219.560)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000031_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 7355.3, -7355.2, 161.760)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7071.1, -7700.8, 71.760)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7328.0, 6787.3, 341.760)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 7304.1, 6647.0, 211.507)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), 5273.1, -5900.9, 111.643)
    u = CreateUnit(p, FourCC("nwwf"), 5507.5, -5568.8, 156.918)
    u = CreateUnit(p, FourCC("nwwd"), -5912.9, -6077.2, 36.175)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000115_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), -5988.7, -5850.9, 12.188)
    u = CreateUnit(p, FourCC("nwwf"), -5699.6, -6136.7, 57.463)
    u = CreateUnit(p, FourCC("nskm"), -5903.1, 5231.3, 320.051)
    u = CreateUnit(p, FourCC("nskm"), -5624.6, 5464.9, 290.641)
    u = CreateUnit(p, FourCC("nwwd"), -5712.1, 5253.9, 306.175)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000029_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), -5485.8, 5329.7, 282.188)
    u = CreateUnit(p, FourCC("nwwf"), -5771.6, 5040.6, 327.463)
    u = CreateUnit(p, FourCC("nwwd"), 5533.5, 5403.6, 216.175)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000057_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), 5609.3, 5177.3, 192.188)
    u = CreateUnit(p, FourCC("nnws"), 4084.8, -464.5, 86.542)
    u = CreateUnit(p, FourCC("nnwl"), 4315.4, -609.7, 105.976)
    u = CreateUnit(p, FourCC("nwwf"), 5320.2, 5463.1, 237.463)
    u = CreateUnit(p, FourCC("nnwl"), -3503.5, 2765.7, 100.220)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nrvs"), -3380.6, 2895.5, 114.780)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000045_DropItems)
    u = CreateUnit(p, FourCC("nrvs"), -3351.1, -3561.5, 204.780)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000033_DropItems)
    u = CreateUnit(p, FourCC("nnwr"), -3478.4, -3690.5, 234.433)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwr"), -3509.6, 3022.8, 144.433)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), 3108.1, 3457.8, 10.220)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nrvs"), 3231.2, 3332.3, 24.780)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000051_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), 7005.7, 6957.3, 266.558)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwq"), 502.1, 4153.4, 164.592)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000136_DropItems)
    u = CreateUnit(p, FourCC("nnwr"), 3358.5, 3461.3, 54.433)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnws"), 168.0, 4198.3, 176.542)
    u = CreateUnit(p, FourCC("nnwl"), 313.2, 4428.9, 195.976)
    u = CreateUnit(p, FourCC("nwwf"), -5746.6, -5890.7, 27.407)
    u = CreateUnit(p, FourCC("nwwf"), 5272.6, -5655.5, 126.862)
    u = CreateUnit(p, FourCC("nwwf"), 5367.2, 5217.1, 207.407)
    u = CreateUnit(p, FourCC("nwwf"), -5525.7, 5087.6, 297.407)
    u = CreateUnit(p, FourCC("nskm"), 7452.6, 6798.3, 216.477)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 7181.9, 7073.2, 251.760)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -1859.4, -70.6, 185.630)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000151_DropItems)
    u = CreateUnit(p, FourCC("nska"), 1828.8, -443.3, 10.257)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), 1808.5, -260.4, 353.031)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwl"), -3778.2, 317.4, 244.787)
    u = CreateUnit(p, FourCC("nnwa"), 881.5, -7333.6, 137.510)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000156_DropItems)
    u = CreateUnit(p, FourCC("nnwa"), 1996.9, -342.5, 5.630)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000022_DropItems)
    u = CreateUnit(p, FourCC("nska"), -171.6, 1669.1, 83.031)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwa"), -89.4, 1857.5, 95.630)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000062_DropItems)
    u = CreateUnit(p, FourCC("nskm"), 7165.9, -1537.2, 159.010)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000074_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), 7043.9, -1410.4, 171.194)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), 6968.8, -1599.0, 138.554)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nnwq"), -4048.7, 493.2, 254.592)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000059_DropItems)
    u = CreateUnit(p, FourCC("nnwl"), -4324.2, 304.3, 285.976)
    u = CreateUnit(p, FourCC("nnws"), -4093.6, 159.1, 266.542)
    u = CreateUnit(p, FourCC("nskm"), 7105.3, 290.4, 187.217)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), 7072.2, 504.1, 208.968)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nskm"), -7275.1, 575.5, 339.010)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000076_DropItems)
    u = CreateUnit(p, FourCC("nnwa"), 6957.0, 382.7, 214.609)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000067_DropItems)
    u = CreateUnit(p, FourCC("nwwf"), -2077.4, 1339.8, 35.709)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000163_DropItems)
    u = CreateUnit(p, FourCC("nska"), -2081.8, 1198.3, 52.344)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), -2253.8, 1325.8, 23.970)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nwwf"), 1575.4, 2551.1, 295.436)
    SetUnitAcquireRange(u, 200.0)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    TriggerAddAction(t, Unit000166_DropItems)
    u = CreateUnit(p, FourCC("nska"), 1437.0, 2580.6, 312.072)
    SetUnitAcquireRange(u, 200.0)
    u = CreateUnit(p, FourCC("nska"), 1593.1, 2727.1, 283.698)
    SetUnitAcquireRange(u, 200.0)
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, FourCC("ngol"), -4032.0, 960.0, 270.000)
    SetResourceAmount(u, 17000)
    u = CreateUnit(p, FourCC("ngol"), -1344.0, -4608.0, 270.000)
    SetResourceAmount(u, 17000)
    u = CreateUnit(p, FourCC("ngol"), 4032.0, -1344.0, 270.000)
    SetResourceAmount(u, 17000)
    u = CreateUnit(p, FourCC("ngol"), 1024.0, 4032.0, 270.000)
    SetResourceAmount(u, 17000)
    u = CreateUnit(p, FourCC("ngol"), -6208.0, -6336.0, 270.000)
    SetResourceAmount(u, 15000)
    u = CreateUnit(p, FourCC("ngol"), 5696.0, -6080.0, 270.000)
    SetResourceAmount(u, 15000)
    u = CreateUnit(p, FourCC("ntav"), 64.0, -192.0, 270.000)
    SetUnitColor(u, ConvertPlayerColor(0))
    u = CreateUnit(p, FourCC("nmr7"), 3136.0, -3264.0, 270.000)
    SetUnitColor(u, ConvertPlayerColor(3))
    u = CreateUnit(p, FourCC("ngol"), 5824.0, 5696.0, 270.000)
    SetResourceAmount(u, 15000)
    u = CreateUnit(p, FourCC("ngol"), -5952.0, 5568.0, 270.000)
    SetResourceAmount(u, 15000)
    u = CreateUnit(p, FourCC("nmr7"), -3136.0, 2688.0, 270.000)
    SetUnitColor(u, ConvertPlayerColor(3))
    u = CreateUnit(p, FourCC("nmr7"), 3008.0, 3072.0, 270.000)
    SetUnitColor(u, ConvertPlayerColor(3))
    u = CreateUnit(p, FourCC("nmr7"), -3072.0, -3328.0, 270.000)
    SetUnitColor(u, ConvertPlayerColor(3))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreateNeutralHostile()
    CreatePlayerUnits()
end

function Trig_Melee_Initialization_Actions()
    MeleeStartingVisibility()
    MeleeStartingHeroLimit()
    MeleeGrantHeroItems()
    MeleeStartingResources()
    MeleeClearExcessUnits()
    MeleeStartingUnits()
    MeleeInitVictoryDefeat()
end

function InitTrig_Melee_Initialization()
    gg_trg_Melee_Initialization = CreateTrigger()
    TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

function InitCustomTriggers()
    InitTrig_Melee_Initialization()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Melee_Initialization)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_RANDOM)
    SetPlayerRaceSelectable(Player(1), true)
    SetPlayerController(Player(1), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_RANDOM)
    SetPlayerRaceSelectable(Player(2), true)
    SetPlayerController(Player(2), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_RANDOM)
    SetPlayerRaceSelectable(Player(3), true)
    SetPlayerController(Player(3), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
    SetPlayerTeam(Player(1), 0)
    SetPlayerTeam(Player(2), 0)
    SetPlayerTeam(Player(3), 0)
end

function InitAllyPriorities()
    SetStartLocPrioCount(0, 2)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 1, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 2)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 2)
    SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(3, 2)
    SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_HIGH)
end

function main()
    local we
    SetCameraBounds(-7936.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -8192.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7936.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7680.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7936.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7680.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7936.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -8192.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    we = AddWeatherEffect(Rect(-10240.0, -10240.0, 10240.0, 10240.0), FourCC("SNls"))
    EnableWeatherEffect(we, true)
    NewSoundEnvironment("Default")
    SetAmbientDaySound("NorthrendDay")
    SetAmbientNightSound("NorthrendNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_009")
    SetPlayers(4)
    SetTeams(4)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, -3904.0, 192.0)
    DefineStartLocation(1, -576.0, -4608.0)
    DefineStartLocation(2, 4160.0, -576.0)
    DefineStartLocation(3, 256.0, 4160.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end


local function __module_0()
    Ids = { }
    Ids.__index = Ids
    
    Ids.hallIds = {
        htow = "htow",
        hkee = "hkee",
        hcas = "hcas",
        ogre = "ogre",
        ostr = "ostr",
        ofrt = "ofrt",
        unpl = "unpl",
        unp1 = "unp1",
        unp2 = "unp2",
        etol = "etol",
        etoa = "etoa",
        etoe = "etoe",
        nntt = "nntt",
    }
    
    Ids.peonIds = {
        hpea = "hpea",
        opeo = "opeo",
        uaco = "uaco",
        ewsp = "ewsp",
        nmpe = "nmpe",
        hmil = "hmil",
        ugho = "ugho",
    }
    Ids.goldmineIds = {
        ngol = "ngol",
        ugol = "ugol",
        egol = "egol",
    }
    
    Ids.orderTypes = {
        ORDER_IDLE = "ORDER_IDLE",
        ORDER_GOLDMINE = "ORDER_GOLDMINE",
        ORDER_WOOD = "ORDER_WOOD",
        ORDER_BUILD = "ORDER_BUILD",
        ORDER_DRAFTED = "ORDER_DRAFTED",
    }
    
    Ids.treeTypes = {
        ATtr = "ATtr",
        BTtw = "BTtw",
        KTtw = "KTtw",
        YTft = "YTft",
        JYct = "JYct",
        JTct = "JTct",
        YTst = "YTst",
        YTct = "YTct",
        YTtw = "YTtw",
        JTtw = "JTtw",
        DTsh = "DTsh",
        FTtw = "FTtw",
        CTtr = "CTtr",
        ITtw = "ITtw",
        NTtw = "NTtw",
        OTtw = "OTtw",
        ZTtw = "ZTtw",
        WTst = "WTst",
        LTlt = "LTlt",
        GTsh = "GTsh",
        VTlt = "VTlt",
        WTtw = "WTtw",
        ATtc = "ATtc",
        BTtc = "BTtc",
        CTtc = "CTtc",
        ITtc = "ITtc",
        NTtc = "NTtc",
        ZTtc = "ZTtc",
    }
    
    function Ids.IsHallId(type)
        return not (Ids.hallIds[type] == nil)
    end
    function Ids.IsPeonId(type)
        return not (Ids.peonIds[type] == nil)
    end
    function Ids.IsGoldmineId(type)
        return not (Ids.goldmineIds[type] == nil)
    end
    function Ids.IsTreeType(type)
        return not (Ids.treeTypes[type] == nil)
    end
end
__modules["Ids"] = {initialized = false, cached = nil, loader = __module_0}
local function __module_1()
    require("Ids")
    
    Utils = { }
    Utils.__index = Utils
    
    function Utils.FourCC(id)
        return string.unpack(">I4", id)
    end
    function Utils.CCInteger(id)
        return string.pack(">I4", id)
    end
    
    function Utils.ByteToHex(num)
        return string.format('%02x', num)
    end
    
    function Utils.RGBToHex(red, green, blue)
        return "00" .. Utils.ByteToHex(red) .. Utils.ByteToHex(green) .. Utils.ByteToHex(blue)
    end
    
    function Utils.RGBTextString(red, green, blue, ...)
        local ret = "|c" .. Utils.RGBToHex(red, green, blue)
        for _, v in ipairs { ... } do
            ret = ret .. tostring(v) .. " "
        end
        ret = ret .. "|r"
        return ret
    end
    
    function Utils.TableConcat(t1, t2)
        for i = 1, #t2 do
            t1[#t1 + 1] = t2[i]
        end
        return t1
    end
    
    function Utils.GetUnitsOfTypeAroundLocationInRange(unitId, location, range)
        local f = Filter(function()
            return (GetUnitTypeId(GetFilterUnit()) == Utils.FourCC(unitId))
        end)
        local g = CreateGroup()
        GroupEnumUnitsInRange(g, GetLocationX(location), GetLocationY(location), range, f)
        local unit = FirstOfGroup(g)
        local arr = {}
        while not (unit == nil) do
            arr[#arr + 1] = unit
            GroupRemoveUnit(g, unit)
            unit = FirstOfGroup(g)
        end
        DestroyFilter(f)
        DestroyGroup(g)
        return arr
    end
    
    function Utils.DistanceBetweenPoints(location1, location2)
        local x1 = GetLocationX(location1) - GetLocationX(location2)
        local y1 = GetLocationY(location1) - GetLocationY(location2)
        return math.sqrt(x1 * x1 + y1 * y1)
    end
    
    function Utils.GetClosestTreeToLocationInRange(location, range)
        local x = GetLocationX(location)
        local y = GetLocationY(location)
        local f = Filter(function()
            return Ids.IsTreeType(Utils.CCInteger(GetDestructableTypeId(GetFilterDestructable())))
        end)
        local rect = Rect(x - range, y - range, x + range, y + range)
        local target
        local targetDistance = math.huge
    
        EnumDestructablesInRect(rect, f, function()
            if (GetDestructableLife(GetEnumDestructable()) >= 1) then
                local destructLoc = Location(GetWidgetX(GetEnumDestructable()), GetWidgetY(GetEnumDestructable()))
                local distance = math.floor(Utils.DistanceBetweenPoints(location, destructLoc))
                RemoveLocation(destructLoc)
    
                if (distance < targetDistance) then
                    target = GetEnumDestructable()
                    targetDistance = distance
                end
            end
        end)
        return target
    end
    
    function Utils.CreateJson(input)
        local json = ""
        if (type(input) == "table") then
            json = json .. "{"
            for i, e in pairs(input) do
                json = json .. i .. ":" .. Utils.CreateJson(e) .. ","
            end
            json = json .. "}"
        elseif type(input) == "function" then
            json = json .. "function"
        else
            json = json .. tostring(input)
        end
        return json
    end
    
    function Utils.GetStartUnits(aiPlayer, ...)
        local loc = GetStartLocationLoc(GetPlayerStartLocation(aiPlayer))
        local arr = {}
        for i, e in pairs(...) do
            arr = Utils.TableConcat(arr, Utils.GetUnitsOfTypeAroundLocationInRange(e, loc, 2048))
        end
        RemoveLocation(loc)
        return arr
    end
    
    function Utils.GetUnitsAround(location, ...)
        local arr = {}
        for i, e in pairs(...) do
            arr = Utils.TableConcat(arr, Utils.GetUnitsOfTypeAroundLocationInRange(e, location, 2048))
        end
        return arr
    end
end
__modules["Utils"] = {initialized = false, cached = nil, loader = __module_1}
local function __module_2()
    require("Utils")
    
    TreeCore = { }
    TreeCore.__index = TreeCore
    
    TreeCore.version = 1
    
    TreeCore.printVerbose = false
    TreeCore.printDebug = true
    TreeCore.printWarning = true
    TreeCore.printCritical = true
    
    -- Version 1 API
    function TreeCore.CreateLogger(name)
        local this = {};
        setmetatable(this, TreeCore)
        this.name = tostring(name);
        this.Verbose = function(...)
            if (this.printVerbose) then
                print(this.name, "-> Verbose ->", ...)
            end
        end
        this.Debug = function(...)
            if (this.printDebug) then
                print(Utils.RGBTextString(255, 255, 0, this.name, "-> Debug ->", ...))
            end
        end
        this.Warning = function(...)
            if (this.printWarning) then
                print(Utils.RGBTextString(255, 200, 0, this.name,"-> Warning ->", ...))
            end
        end
        this.Critical = function(...)
            if (this.printCritical) then
                print(Utils.RGBTextString(255, 0, 0, this.name, "-> Critical ->", ...))
            end
        end
    
        return this
    end
end
__modules["TreeCore"] = {initialized = false, cached = nil, loader = __module_2}
local function __module_3()
    ArrayList = { }
    ArrayList.__index = ArrayList
    
    function ArrayList.Create(extension, ordered)
        local this = { }
    
        this.isOrdered = ordered or false
    
        --Constants
        function this.Get(index)
            index = index or 1
            return this[index]
        end
        function this.GetOrFirst(index)
            index = index or 1
            if (index > #this) then
                index = 1
            end
            return this[index]
        end
        function this.GetByReference(ref)
            for i, e in ipairs(this) do
                if (ref == e) then
                    return this.Get(i)
                end
            end
            return nil
        end
        function this.Set(index, value)
            this[index] = value
            return this[index]
        end
        function this.Push(value)
            this[#this + 1] = value
            return #this
        end
        function this.PushArray(array)
            for _, e in ipairs(array) do
                this.Push(e)
            end
            return #this
        end
        function this.Pop(index)
            index = index or 1
            local value
            if (#this > 0) then
                if (this.isOrdered == false) then
                    value = this[index]
                    this[index] = this[#this]
                    this[#this] = nil
                else
                    value = this[index]
                    for i = index, #this - 1 do
                        this[i] = this[i + 1]
                    end
                    this[#this] = nil
                end
            end
    
            return value
        end
        function this.PopByReference(ref)
            for i, e in ipairs(this) do
                if (ref == e) then
                    return this.Pop(i)
                end
            end
            return nil
        end
        function this.ForEach(callback)
            for i, j in ipairs(this) do
                callback(j, i)
            end
        end
    
        if not (extension == nil) then
            for k, v in pairs(extension) do
                this[k] = v
            end
        end
        return this
    end
end
__modules["ArrayList"] = {initialized = false, cached = nil, loader = __module_3}
local function __module_4()
    require("TreeCore")
    require("ArrayList")
    
    AICreep = { }
    
    AICreep.Create = function(aiPlayer)
        local this = ArrayList.Create()
        setmetatable(this, AICreep)
        --CONSTANTS
        local campRadius = 832
        local neutralPlayer = Player(GetPlayerNeutralAggressive())
        local logger = TreeCore.CreateLogger("AICreep.lua")
    
        local neutralUnitFilter = Filter(function()
            if (GetOwningPlayer(GetFilterUnit()) == neutralPlayer) then
                return true
            end
            return false
        end)
    
        function this.RegenerateCreepCamps()
            logger.Verbose("Start RegenerateCreepCamps")
            local group = CreateGroup()
            local pick = ArrayList.Create()
            GroupEnumUnitsOfPlayer(group, neutralPlayer, nil)
    
            local function CreateCamp(x, y, unit)
                local camp = CreateGroup()
                local level = 0
                GroupEnumUnitsInRange(camp, GetUnitX(unit), GetUnitY(unit), campRadius, neutralUnitFilter)
    
                local creepArray = {}
                local function countLevelMakeArray()
                    level = level + GetUnitLevel(GetEnumUnit())
                    creepArray[#creepArray + 1] = GetEnumUnit()
                    pick.Push(GetEnumUnit())
                end
                ForGroup(camp, countLevelMakeArray)
    
                this.Push({ x = x, y = y, units = creepArray, level = level })
            end
    
            local function handleUnit()
                local unit = GetEnumUnit()
                if (pick.GetByReference(GetEnumUnit()) == nil) then
                    logger.Verbose("Handle unit. " .. GetUnitName(unit))
                    CreateCamp(GetUnitX(unit), GetUnitY(unit), unit)
                else
                    logger.Verbose("Skipped unit: " .. GetUnitName(unit))
                end
            end
            ForGroup(group, handleUnit)
            DestroyGroup(group)
    
            logger.Verbose("End RegenerateCreepCamps")
        end
    
        logger.Verbose("Finish Building AICreep")
        return this
    end
end
__modules["AICreep"] = {initialized = false, cached = nil, loader = __module_4}
local function __module_5()
    require("TreeCore")
    require("Utils")
    require("ArrayList")
    require("Ids")
    
    AIWorkerAllocator = { }
    AIWorkerAllocator.__index = AIWorkerAllocator
    
    function AIWorkerAllocator.Create(aiPlayer)
        local this = ArrayList.Create()
        --CONSTANTS
        local logger = TreeCore.CreateLogger("AIWorkerAllocator.lua")
    
        logger.Verbose("Started Building AIWorkerAllocator")
    
        function this.Push (unit)
            local w = { unit = unit, order = Ids.orderTypes.ORDER_IDLE, unitType = Utils.CCInteger(GetUnitTypeId(unit)) }
            this[#this + 1] = w
            return #this
        end
        function this.GetByUnit (unit)
            for i = 1, #this do
                if (this[i].unit == unit) then
                    return this[i]
                end
            end
            return nil
        end
        function this.GetIndexByUnit(unit)
            for i = 1, #this do
                if (this[i].unit == unit) then
                    return i
                end
            end
            return nil
        end
    
        local peons = Utils.GetStartUnits(aiPlayer, Ids.peonIds)
        for _, worker in ipairs(peons) do
            this.Push(worker)
        end
    
        logger.Verbose("Finish Building AIWorkerAllocator")
        return this
    end
end
__modules["AIWorkerAllocator"] = {initialized = false, cached = nil, loader = __module_5}
local function __module_6()
    require("TreeCore")
    require("Utils")
    require("ArrayList")
    require("Ids")
    
    AITownAllocator = { }
    AITownAllocator.__index = AITownAllocator
    
    function AITownAllocator.Create(aiPlayer)
        local this = ArrayList.Create()
        --Constants
        local logger = TreeCore.CreateLogger("AITownAllocator.lua")
    
        logger.Verbose("Started Building AITownAllocator")
    
        --CODE
        function this.Push (location, hall, mine)
            local w = { location = location, hall = hall, mine = mine }
            this[#this + 1] = w
        end
        function this.GetClosestTownId(location)
            local closestTown = 1
            local distance = math.huge
    
            this.ForEach(function(value, index)
                local dist = Utils.DistanceBetweenPoints(location, value.location)
                if (dist < distance) then
                    closestTown = index
                    distance = dist
                end
            end)
            return closestTown
        end
    
        function this.MakeNewTown(building)
            if (Ids.IsHallId(Utils.CCInteger(GetUnitTypeId(building)))) then
                local townLoc = GetUnitLoc(building)
                if (this.GetClosestTownId(townLoc) >= 2048) then
                    local mine = Utils.GetUnitsAround(townLoc, Ids.goldmineIds)
                    this.Push(townLoc, building, mine[1])
                else
                    local town = this.Get(this.GetClosestTownId(townLoc))
                    town.hall = this
                end
            end
        end
    
    
    
        local mines = Utils.GetStartUnits(aiPlayer, Ids.goldmineIds)
        local halls = Utils.GetStartUnits(aiPlayer, Ids.hallIds)
        this.Push(GetUnitLoc(halls[1]), halls[1], mines[1])
    
        logger.Verbose("Finish Building AITownAllocator")
        return this
    end
end
__modules["AITownAllocator"] = {initialized = false, cached = nil, loader = __module_6}
local function __module_7()
    require("TreeCore")
    require("ArrayList")
    
    AIWorkerGroups = { }
    AIWorkerGroups.__index = AIWorkerGroups
    
    function AIWorkerGroups.Create(workerTypes)
        local this = ArrayList.Create()
        --Constants
        local logger = TreeCore.CreateLogger("AIWorkerGroups.lua")
    
        logger.Verbose("Started Building AIWorkerGroups")
    
        this.workerTypes = workerTypes
    
        this.idleIndexes = ArrayList.Create({
            PopByUnitType = function(type)
                for i, e in ipairs(this.idleIndexes) do
                    if (e.unitType == type) then
                        return this.idleIndexes.Pop(i)
                    end
                end
            end
        })
    
        function this.Set(index, amountOfWorkers, orderType, townIndex)
            local old = this.Pop(index)
            if not (old == nil) then
                this.idleIndexes.PushArray(old.workerIndexes)
            end
            this[index] = { amountOfWorkers = amountOfWorkers, orderType = orderType, workerIndexes = ArrayList.Create(), townIndex = townIndex }
        end
    
        function this.Push(value)
            this.logger.Critical("Not allowed operation: ", "Push", "to workGroups in:", "AIWorkerGroups", tostring(value))
        end
        function this.PopulateIdleWorkers(index)
            local group = this[index]
            for j = #group.workerIndexes + 1, group.amountOfWorkers do
                local worker
                if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                    worker = this.idleIndexes.PopByUnitType(this.workerTypes.gold)
                elseif group.orderType == Ids.orderTypes.ORDER_WOOD then
                    worker = this.idleIndexes.PopByUnitType(this.workerTypes.wood)
                elseif group.orderType == Ids.orderTypes.ORDER_BUILD then
                    worker = this.idleIndexes.PopByUnitType(this.workerTypes.build)
                end
                if not (worker == nil) then
                    group.workerIndexes[#group.workerIndexes + 1] = worker
                end
            end
        end
        function this.ClearWorker (worker)
            this.idleIndexes.PopByReference(worker)
            for i, group in ipairs(this) do
                group.workerIndexes.PopByReference(worker)
            end
        end
        --CODE
    
        logger.Verbose("Finish Building AIWorkerGroups")
        return this
    end
end
__modules["AIWorkerGroups"] = {initialized = false, cached = nil, loader = __module_7}
local function __module_8()
    require("TreeCore")
    require("ArrayList")
    
    AIBuildings = { }
    AIBuildings.__index = AIBuildings
    
    AIBuildings.statuses = {
        IDLE = "IDLE",
        CONSTRUCTING = "CONSTRUCTING",
        UPGRADING = "UPGRADING",
        TRAINING = "TRAINING",
        RESEARCHING = "RESEARCHING",
    }
    
    function AIBuildings.Create(aiPlayer, aiTownAllocator)
        local this = ArrayList.Create()
    
        local logger = TreeCore.CreateLogger("AIBuildings.lua")
        logger.Verbose("Started Building AIBuildings")
    
        function this.Push(unit, status, townIndex)
            this[#this + 1] = { unit = unit, status = status, targetType = nil, townIndex = townIndex }
            return #this
        end
    
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
    
        local halls = Utils.GetStartUnits(aiPlayer, Ids.hallIds)
        this.Push(halls[1], AIBuildings.statuses.IDLE, 1)
    
        logger.Verbose("Finish Building AIBuildings")
    
        this.onStartConstruct = {}
        this.onStartConstruct.trigger = CreateTrigger()
        this.onStartConstruct.event = TriggerRegisterPlayerUnitEvent(this.onStartConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
        this.onStartConstruct.action = TriggerAddAction(this.onStartConstruct.trigger, function()
            local building = GetTriggerUnit()
            local loc = GetUnitLoc(building)
            aiTownAllocator.MakeNewTown(building)
            this.Push(building, AIBuildings.statuses.CONSTRUCTING, aiTownAllocator.GetClosestTownId(loc))
            RemoveLocation(loc)
        end)
        this.onCancelConstruct = {}
        this.onCancelConstruct.trigger = CreateTrigger()
        this.onCancelConstruct.event = TriggerRegisterPlayerUnitEvent(this.onCancelConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
        this.onCancelConstruct.action = TriggerAddAction(this.onCancelConstruct.trigger, function()
            local building = GetTriggerUnit()
            this.PopByUnit(building)
        end)
        this.onFinishConstruct = {}
        this.onFinishConstruct.trigger = CreateTrigger()
        this.onFinishConstruct.event = TriggerRegisterPlayerUnitEvent(this.onFinishConstruct.trigger, aiPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH, nil)
        this.onFinishConstruct.action = TriggerAddAction(this.onFinishConstruct.trigger, function()
            local building = GetTriggerUnit()
            this.GetByUnit(building).status = AIBuildings.statuses.IDLE
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
            struct.status = AIBuildings.statuses.TRAINING
            struct.targetType = Utils.CCInteger(GetTrainedUnitType())
        end)
    
        this.onFinishTraining = {}
        this.onFinishTraining.trigger = CreateTrigger()
        this.onFinishTraining.event = TriggerRegisterPlayerUnitEvent(this.onFinishTraining.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_CANCEL, nil)
        this.onFinishTraining.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishTraining.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_FINISH, nil)
        this.onFinishTraining.action = TriggerAddAction(this.onFinishTraining.trigger, function()
            local struct = this.GetByUnit(GetTriggerUnit())
            struct.status = AIBuildings.statuses.IDLE
            struct.targetType = nil
        end)
    
        this.onStartUpgrade = {}
        this.onStartUpgrade.trigger = CreateTrigger()
        this.onStartUpgrade.event = TriggerRegisterPlayerUnitEvent(this.onStartUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_START, nil)
        this.onStartUpgrade.action = TriggerAddAction(this.onStartUpgrade.trigger, function()
            local struct = this.GetByUnit(GetTriggerUnit())
            print(GetTrainedUnitType())
            struct.status = AIBuildings.statuses.UPGRADING
            struct.targetType = "?"
        end)
    
        this.onFinishUpgrade = {}
        this.onFinishUpgrade.trigger = CreateTrigger()
        this.onFinishUpgrade.event = TriggerRegisterPlayerUnitEvent(this.onFinishUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_FINISH, nil)
        this.onFinishUpgrade.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishUpgrade.trigger, aiPlayer, EVENT_PLAYER_UNIT_UPGRADE_CANCEL, nil)
        this.onFinishUpgrade.action = TriggerAddAction(this.onFinishUpgrade.trigger, function()
            local struct = this.GetByUnit(GetTriggerUnit())
            struct.status = AIBuildings.statuses.IDLE
            struct.targetType = nil
        end)
    
        this.onStartResearch = {}
        this.onStartResearch.trigger = CreateTrigger()
        this.onStartResearch.event = TriggerRegisterPlayerUnitEvent(this.onStartResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_START, nil)
        this.onStartResearch.action = TriggerAddAction(this.onStartResearch.trigger, function()
            local struct = this.GetByUnit(GetResearchingUnit())
            struct.status = AIBuildings.statuses.RESEARCHING
            struct.targetType = Utils.CCInteger(GetResearched())
        end)
    
        this.onFinishResearch = {}
        this.onFinishResearch.trigger = CreateTrigger()
        this.onFinishResearch.event = TriggerRegisterPlayerUnitEvent(this.onFinishResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_FINISH, nil)
        this.onFinishResearch.event2 = TriggerRegisterPlayerUnitEvent(this.onFinishResearch.trigger, aiPlayer, EVENT_PLAYER_UNIT_RESEARCH_CANCEL, nil)
        this.onFinishResearch.action = TriggerAddAction(this.onFinishUpgrade.trigger, function()
            local struct = this.GetByUnit(GetResearchingUnit())
            struct.status = AIBuildings.statuses.IDLE
            struct.targetType = nil
        end)
    
        return this
    end
end
__modules["AIBuildings"] = {initialized = false, cached = nil, loader = __module_8}
local function __module_9()
    require("TreeCore")
    require("Utils")
    require("AIWorkerAllocator")
    require("AITownAllocator")
    require("AIWorkerGroups")
    require("AIBuildings")
    require("ArrayList")
    require("Ids")
    
    AIWorker = { }
    AIWorker.__index = AIWorker
    
    AIWorker.Create = function(aiPlayer, workerTypes)
        local this = { }
        setmetatable(this, AIWorker)
        --CONSTANTS
        local logger = TreeCore.CreateLogger("AIWorker.lua")
    
        this.workerTypes = workerTypes
    
        this.townAllocator = AITownAllocator.Create(aiPlayer)
        this.workerAllocator = AIWorkerAllocator.Create(aiPlayer)
    
        this.workerGroups = AIWorkerGroups.Create(workerTypes)
        this.buildings = AIBuildings.Create(aiPlayer, this.townAllocator)
    
        local function PerformWorkerOrder(worker, orderType, townIndex, hardReset)
            hardReset = hardReset or false
            if hardReset or not (worker.order == orderType) then
                if orderType == Ids.orderTypes.ORDER_DRAFTED then
                    return nil
                elseif orderType == Ids.orderTypes.ORDER_BUILD then
                    return nil
                elseif orderType == Ids.orderTypes.ORDER_GOLDMINE then
                    IssueTargetOrder(worker.unit, "harvest", this.townAllocator.GetOrFirst(townIndex).mine)
                    worker.order = Ids.orderTypes.ORDER_GOLDMINE
                elseif orderType == Ids.orderTypes.ORDER_WOOD then
                    local loc = GetUnitLoc(this.townAllocator.GetOrFirst(townIndex).hall)
                    IssueTargetOrder(worker.unit, "harvest", Utils.GetClosestTreeToLocationInRange(loc, 4096))
                    worker.order = Ids.orderTypes.ORDER_WOOD
                    RemoveLocation(loc)
                end
            end
        end
    
        local function IterateOrders(group, hardReset)
            hardReset = hardReset or false
            for i, worker in ipairs(group.workerIndexes) do
                if (hardReset or not (worker.order == group.orderType)) and not (worker.order == Ids.orderTypes.ORDER_BUILD) then
                    if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                        if not (this.townAllocator.Get(group.townIndex) == nil) then
                            PerformWorkerOrder(worker, Ids.orderTypes.ORDER_GOLDMINE, group.townIndex, hardReset)
                        else
                            PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                        end
                    end
                    if group.orderType == Ids.orderTypes.ORDER_WOOD then
                        PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                    end
                    if (group.orderType == Ids.orderTypes.ORDER_BUILD and not (worker.order == Ids.orderTypes.ORDER_BUILD)) then
                        PerformWorkerOrder(worker, this.workerTypes.buildIdleOrder, group.townIndex, false)
                    end
                end
            end
        end
    
        local function IterateIdles()
            IterateOrders({
                orderType = Ids.orderTypes.ORDER_WOOD,
                workerIndexes = this.workerGroups.idleIndexes,
                townIndex = 1,
            })
        end
    
        function this.UpdateOrdersForWorkers(hardReset)
            hardReset = hardReset or false
            for i, group in ipairs(this.workerGroups) do
                if (group.amountOfWorkers > #group.workerIndexes) then
                    logger.Verbose(group.amountOfWorkers, ">", #group.workerIndexes)
                    this.workerGroups.PopulateIdleWorkers(i)
                end
                IterateOrders(group, hardReset)
            end
            IterateIdles(hardReset)
        end
    
        for i, wg in ipairs(this.workerAllocator) do
            this.workerGroups.idleIndexes[#this.workerGroups.idleIndexes + 1] = wg
        end
    
        this.workerAdder = {}
        this.workerAdder.trigger = CreateTrigger()
        this.workerAdder.event = TriggerRegisterPlayerUnitEvent(this.workerAdder.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_FINISH, nil)
        this.workerAdder.condition = TriggerAddCondition(this.workerAdder.trigger, Condition(function()
            return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetTrainedUnit()))))
        end))
        this.workerAdder.action = TriggerAddAction(this.workerAdder.trigger, function()
            local id = this.workerAllocator.Push(GetTrainedUnit())
            local worker = this.workerAllocator.Get(id)
            this.workerGroups.idleIndexes.Push(worker)
            this.UpdateOrdersForWorkers()
        end)
    
        this.workerRemover = {}
        this.workerRemover.trigger = CreateTrigger()
        this.workerRemover.event = TriggerRegisterPlayerUnitEvent(this.workerRemover.trigger, aiPlayer, EVENT_PLAYER_UNIT_DEATH, Condition(nil))
        this.workerAdder.condition = TriggerAddCondition(this.workerRemover.trigger, Condition(function()
            return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetDyingUnit()))))
        end))
        this.workerRemover.action = TriggerAddAction(this.workerRemover.trigger, function()
            local id = this.workerAllocator.GetIndexByUnit(GetDyingUnit())
            local worker = this.workerAllocator.Pop(id)
            this.workerGroups.ClearWorker(worker)
            this.UpdateOrdersForWorkers()
        end)
    
        logger.Verbose("Finish Building AIWorker")
    
        return this
    end
    
end
__modules["AIWorker"] = {initialized = false, cached = nil, loader = __module_9}
local function __module_10()
    require("TreeCore")
    
    AIAbstractRace = { }
    AIAbstractRace.__index = AIAbstractRace
    
    function AIAbstractRace.Create(aiPlayer)
        local this = { }
        setmetatable(this, AIAbstractRace)
        --Constants
        local logger = TreeCore.CreateLogger("AIAbstractRace.lua")
    
        logger.Verbose("Started Building AIRaceInterface")
    
        if (aiPlayer==nil) then
            logger.Critical("Ai player nil, functionality will never work.")
            return nil
        end
        this.moduleCreep = AICreep.Create(aiPlayer)
        this.moduleWorker = nil
    
        this.moduleCreep.RegenerateCreepCamps()
        --CODE
    
        logger.Verbose("Finish Building AIRaceInterface")
        return this
    end
end
__modules["AIAbstractRace"] = {initialized = false, cached = nil, loader = __module_10}
local function __module_11()
    require("TreeCore")
    require("AICreep")
    require("AIWorker")
    require("AIAbstractRace")
    
    AIRaceHuman = { }
    AIRaceHuman.__index = AIRaceHuman
    
    function AIRaceHuman.Create(aiPlayer)
        local this = AIAbstractRace.Create(aiPlayer)
    
        local logger = TreeCore.CreateLogger("AIRaceHuman.lua")
        logger.Verbose("Make AIRaceHuman")
    
        this.workerTypes = {gold = "hpea", wood = "hpea", build = "hpea", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
        this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)
    
        this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
        this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
        this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
        this.moduleWorker.workerGroups.Set(4, 5, Ids.orderTypes.ORDER_GOLDMINE, 2)
    
        this.moduleWorker.UpdateOrdersForWorkers()
    
        logger.Verbose("Finish AIRaceHuman")
    
        return this
    end
end
__modules["AIRaceHuman"] = {initialized = false, cached = nil, loader = __module_11}
local function __module_12()
    require("TreeCore")
    require("AICreep")
    require("AIWorker")
    require("AIAbstractRace")
    
    AIRaceOrc = { }
    AIRaceOrc.__index = AIRaceOrc
    
    function AIRaceOrc.Create(aiPlayer)
        local this = AIAbstractRace.Create(aiPlayer)
    
        local logger = TreeCore.CreateLogger("AIRaceOrc.lua")
        logger.Verbose("Make AIRaceOrc")
    
        this.workerTypes = {gold = "opeo", wood = "opeo", build = "opeo", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
        this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)
    
        this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
        this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
        this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    
        this.moduleWorker.UpdateOrdersForWorkers()
    
        logger.Verbose("Finish AIRaceOrc")
    
        return this
    end
end
__modules["AIRaceOrc"] = {initialized = false, cached = nil, loader = __module_12}
local function __module_13()
    require("TreeCore")
    require("AICreep")
    require("AIWorker")
    require("AIAbstractRace")
    
    AIRaceUndead = { }
    AIRaceUndead.__index = AIRaceUndead
    
    function AIRaceUndead.Create(aiPlayer)
        local this = AIAbstractRace.Create(aiPlayer)
    
        local logger = TreeCore.CreateLogger("AIRaceUndead.lua")
        logger.Verbose("Make AIRaceUndead")
    
        this.workerTypes = {gold = "uaco", wood = "ugho", build = "uaco", buildIdleOrder = Ids.orderTypes.ORDER_GOLDMINE}
        this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)
    
        this.moduleWorker.workerGroups.Set(1, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
        this.moduleWorker.workerGroups.Set(1, 1, Ids.orderTypes.ORDER_BUILD, 1)
        this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_WOOD, 1)
        this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    
        this.moduleWorker.UpdateOrdersForWorkers()
    
        logger.Verbose("Finish AIRaceUndead")
    
        return this
    end
end
__modules["AIRaceUndead"] = {initialized = false, cached = nil, loader = __module_13}
local function __module_14()
    require("TreeCore")
    require("AICreep")
    require("AIWorker")
    require("AIAbstractRace")
    
    AIRaceNightElf = { }
    AIRaceNightElf.__index = AIRaceNightElf
    
    function AIRaceNightElf.Create(aiPlayer)
        local this = AIAbstractRace.Create(aiPlayer)
    
        local logger = TreeCore.CreateLogger("AIRaceNightElf.lua")
        logger.Verbose("Make AIRaceNightElf")
    
        this.workerTypes = {gold = "ewsp", wood = "ewsp", build = "ewsp", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
        this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)
    
        this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
        this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
        this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    
        this.moduleWorker.UpdateOrdersForWorkers()
    
        logger.Verbose("Finish AIRaceNightElf")
    
        return this
    end
end
__modules["AIRaceNightElf"] = {initialized = false, cached = nil, loader = __module_14}
local function __module_15()
    require("TreeCore")
    
    MouseLoc = { }
    MouseLoc.__index = MouseLoc
    
    function MouseLoc.Create(aiPlayer)
        local this = { }
        --Constants
        local logger = TreeCore.CreateLogger("MouseLoc.lua")
    
        logger.Verbose("Started Building MouseLoc")
        this.x = 0
        this.y = 0
    
        --CODE
    
    
        this.mouseMove = {}
        this.mouseMove.trigger = CreateTrigger()
        this.mouseMove.event = TriggerRegisterPlayerEvent(this.mouseMove.trigger, aiPlayer, EVENT_PLAYER_MOUSE_MOVE)
        this.mouseMove.action = TriggerAddAction(this.mouseMove.trigger, function()
            this.x = BlzGetTriggerPlayerMouseX()
            this.y = BlzGetTriggerPlayerMouseY()
        end)
    
        logger.Verbose("Finish Building MouseLoc")
        return this
    end
end
__modules["MouseLoc"] = {initialized = false, cached = nil, loader = __module_15}
local function __module_16()
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
end
__modules["AITargeting"] = {initialized = false, cached = nil, loader = __module_16}
local function __module_17()
    require("TreeCore")
    require("Utils")
    require("MouseLoc")
    require("AITargeting")
    
    ContextBoard = { }
    ContextBoard.__index = ContextBoard
    ContextBoard.types = {
        WORKER = "WORKER",
        BUILDINGS = "BUILDINGS",
        TARGETING = "TARGETING",
        CREEP = "CREEP",
        BUILDERWORKER = "BUILDERWORKER",
    }
    
    function ContextBoard.Create(aiPlayer, aiRace)
        local this = { }
        setmetatable(this, ContextBoard)
        --Constants
        local logger = TreeCore.CreateLogger("ContextBoard.lua")
    
        logger.Verbose("Started Building ContextBoard")
    
        this.data = ArrayList.Create()
        this.type = ContextBoard.types.WORKER
        this.mouse = MouseLoc.Create(aiPlayer)
        this.targeting = AITargeting.Create()
    
        this.board = CreateMultiboard()
        MultiboardSetTitleText(this.board, "Great shit!")
        MultiboardSetColumnCount(this.board, 1)
        MultiboardSetItemsStyle(this.board, true, false)
        MultiboardDisplay(this.board, true)
    
        local function NameCC(cc)
            if (type(cc) == "number") then
                return GetObjectName(cc)
            end
    
            return tostring(cc)
        end
    
        function this.AddWorkerData()
            this.data.Push({ name = "", value = Utils.CreateJson(aiRace.workerTypes) })
            this.data.Push({ name = "workerGroups", value = #aiRace.moduleWorker.workerGroups })
            for i, e in ipairs(aiRace.moduleWorker.workerGroups) do
                this.data.Push({ name = "    " .. i, value = e.orderType .. " -> " .. #e.workerIndexes .. "/" .. e.amountOfWorkers .. " workers in town " .. e.townIndex })
                for j, u in ipairs(e.workerIndexes) do
                    this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u) })
                end
            end
            this.data.Push({ name = "    " .. 0, value = Ids.orderTypes.ORDER_IDLE })
            for j, u in ipairs(aiRace.moduleWorker.workerGroups.idleIndexes) do
                this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u) })
            end
        end
    
        function this.AddBuildingData()
            this.data.Push({ name = "buildings", value = #aiRace.moduleWorker.buildings })
            for i, e in ipairs(aiRace.moduleWorker.buildings) do
                this.data.Push({
                    name = "    " .. i,
                    value = "Town(" .. e.townIndex .. ")" .. " -> " .. GetUnitName(e.unit) .. " -> " .. e.status .. " -> " .. NameCC(e.targetType)
                })
            end
        end
    
        function this.AddTargetingData()
            local mouseLoc = Location(this.mouse.x, this.mouse.y)
            this.data.Push({ name = "targeting", value = "" })
            this.data.Push({ name = "    mouse", value = math.floor(this.mouse.x) .. " - " .. math.floor(this.mouse.y) })
            this.data.Push({ name = "    canBuildTown", value = this.targeting.CanBuildUnitAt("htow", mouseLoc, "hpea"), })
            this.data.Push({ name = "    canBuildFactory", value = this.targeting.CanBuildUnitAt("hbar", mouseLoc, "hpea"), })
            this.data.Push({ name = "    canBuildHarvest", value = this.targeting.CanBuildUnitAt("hlum", mouseLoc, "hpea"), })
            this.data.Push({ name = "    canBuildFarm", value = this.targeting.CanBuildUnitAt("hhou", mouseLoc, "hpea"), })
            this.data.Push({ name = "    ", value = "", })
            this.data.Push({ name = "    GetPathingAt", value = "", })
            this.data.Push({ name = "    WALKABLE", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_WALKABILITY), })
            this.data.Push({ name = "    FLYABLE", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_FLYABILITY), })
            this.data.Push({ name = "    AMPHIBIOUS", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_AMPHIBIOUSPATHING), })
            this.data.Push({ name = "    FLOAT?", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_FLOATABILITY), })
            this.data.Push({ name = "    BLIGHT", value = not this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_BLIGHTPATHING), })
            this.data.Push({ name = "    BUILD", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_BUILDABILITY), })
            this.data.Push({ name = "    PEON", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_PEONHARVESTPATHING), })
    
            RemoveLocation(mouseLoc)
        end
    
        function this.AddCreepData()
            this.data.Push({ name = "CreepCamps", value = #aiRace.moduleCreep })
            this.data.Push({ name = "    mouse", value = math.floor(this.mouse.x) .. " - " .. math.floor(this.mouse.y) })
            for i, e in ipairs(aiRace.moduleCreep) do
                local unitNames = ""
                for _, u in pairs(e.units) do
                    unitNames = unitNames .. ", " .. GetUnitName(u)
                end
                this.data.Push({
                    name = "    " .. i,
                    value = "(" .. math.floor(e.x) .. ", " .. math.floor(e.y) .. ") -> Level: " .. e.level .. " -> Enemies(" .. #e.units .. "):    " .. unitNames
                })
            end
        end
    
        function this.Update()
            this.data = ArrayList.Create()
            if (this.type == ContextBoard.types.WORKER) then
                MultiboardSetTitleText(this.board, "Worker data")
                this.AddWorkerData()
            elseif this.type == ContextBoard.types.BUILDINGS then
                MultiboardSetTitleText(this.board, "Building data")
                this.AddBuildingData()
            elseif this.type == ContextBoard.types.TARGETING then
                MultiboardSetTitleText(this.board, "Targeting data")
                this.AddTargetingData()
            elseif this.type == ContextBoard.types.CREEP then
                MultiboardSetTitleText(this.board, "Creep data")
                this.AddCreepData()
            elseif this.type == ContextBoard.types.BUILDERWORKER then
                MultiboardSetTitleText(this.board, "Builder & Worker data")
                this.AddBuildingData()
                this.data.Push({name = "-", value = "------------------------"})
                this.AddWorkerData()
            end
    
            MultiboardSetItemsValue(this.board, "")
            MultiboardSetRowCount(this.board, 30)
    
            for i, e in ipairs(this.data) do
                local mb1 = MultiboardGetItem(this.board, i - 1, 0)
                MultiboardSetItemValue(mb1, tostring(e.name) .. ": " .. tostring(e.value))
                MultiboardSetItemWidth(mb1, 0.4)
                MultiboardReleaseItem(mb1)
            end
        end
    
        this.keyboard = {}
        this.keyboard.trigger = CreateTrigger()
        this.keyboard.event = TriggerRegisterPlayerChatEvent(this.keyboard.trigger, aiPlayer, "", false)
        this.keyboard.action = TriggerAddAction(this.keyboard.trigger, function()
            local msg = GetEventPlayerChatString()
            if msg == "-w" then
                this.type = ContextBoard.types.WORKER
            elseif msg == "-b" then
                this.type = ContextBoard.types.BUILDINGS
            elseif msg == "-t" then
                this.type = ContextBoard.types.TARGETING
            elseif msg == "-c" then
                this.type = ContextBoard.types.CREEP
            elseif msg == "-bw" then
                this.type = ContextBoard.types.BUILDERWORKER
    
            elseif msg == "-reset" then
                aiRace.moduleWorker.UpdateOrdersForWorkers(true)
            end
        end)
    
        logger.Verbose("Finish Building ContextBoard")
        return this
    end
end
__modules["ContextBoard"] = {initialized = false, cached = nil, loader = __module_17}
local function __module_18()
    require("TreeCore")
    require("AIRaceHuman")
    require("AIRaceOrc")
    require("AIRaceUndead")
    require("AIRaceNightElf")
    require("ContextBoard")
    require("ArrayList")
    
    AICore = { }
    AICore.__index = AICore
    
    function AICore.Create()
        local this = { }
        --Constants
        local logger = TreeCore.CreateLogger("AICore.lua")
    
        logger.Verbose("Started Building AICore")
    
        this.ai = ArrayList.Create()
    
        --TODO:
        for i = 0, GetPlayerNeutralAggressive() - 1 do
            local p = Player(i)
            if (GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) then --and GetPlayerController(p) == MAP_CONTROL_COMPUTER
                local race = GetPlayerRace(p)
                if race == RACE_HUMAN then
                    this.ai.Push(AIRaceHuman.Create(Player(i)))
                elseif race == RACE_ORC then
                    this.ai.Push(AIRaceOrc.Create(Player(i)))
                elseif race == RACE_UNDEAD then
                    this.ai.Push(AIRaceUndead.Create(Player(i)))
                elseif race == RACE_NIGHTELF then
                    this.ai.Push(AIRaceNightElf.Create(Player(i)))
                end
            end
        end
    
        local board = ContextBoard.Create(Player(0), this.ai.Get(1))
    
        this.timer = 0
    
        this.workerRunner = { trigger = CreateTrigger(), enabled = true }
        function this.workerThread()
            xpcall(board.Update, logger.Critical)
        end
    
        TriggerRegisterTimerEvent(this.workerRunner.trigger, 0.1, true)
        TriggerAddAction(this.workerRunner.trigger, this.workerThread)
    
        logger.Verbose("Finish Building AICore")
        return this
    end
end
__modules["AICore"] = {initialized = false, cached = nil, loader = __module_18}
local function __module_19()
    require("AICore")
    require("TreeCore")
    
    local gg_trg_Start
    
    function MapStart()
        local logger = TreeCore.CreateLogger("main")
        logger.Debug("Start")
        local function execute()
            AICore.Create()
        end
    
        xpcall(execute, logger.Critical)
    
        DestroyTrigger(gg_trg_Start)
    end
    
    function NewMain()
        gg_trg_Start = CreateTrigger()
        TriggerRegisterTimerEvent(gg_trg_Start, 0.00, false)
        TriggerAddAction(gg_trg_Start, MapStart)
    end
    
    
    ceres.addHook("main::after", NewMain)
end
__modules["main"] = {initialized = false, cached = nil, loader = __module_19}

-- ceres post-script start

ceres.__oldMain = main
ceres.__oldConfig = config

function main()
    __ceresMain()
end

function config()
    __ceresConfig()
end

ceres.catch(require("main"))

-- ceres post-script end
