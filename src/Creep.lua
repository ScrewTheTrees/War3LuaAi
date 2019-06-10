require("TreeCore")
require("Param")
require("utils.ArrayList")

Creep = { }

function Creep.Create()
    local this = ArrayList.Create()
    this.type = "Creep"
    local logger = TreeCore.CreateLogger("Creep.lua")

    local campRadius = 832
    local neutralPlayer = Player(GetPlayerNeutralAggressive())

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

    logger.Verbose("Finish Building Creep")
    return this
end

function Creep.ResolveParam(param)
    if (true == false) then
        return Creep.Create()
    end
    return Param.Resolve(param, "Creep")
end