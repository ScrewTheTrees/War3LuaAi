require("TreeCore")
require("ArrayList")

AICreep = { }

function AICreep.Create()
    local this = ArrayList.Create()
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

function AICreep.ResolveParam(param)
    if (param) then
        local this = AICreep.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end