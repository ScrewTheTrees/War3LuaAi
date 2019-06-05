require("TreeCore")

AIAbstractRace = { }
AIAbstractRace.__index = AIAbstractRace

function AIAbstractRace.Create(aiPlayer)
    local this = { }
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

function AIAbstractRace.ResolveParam(param)
    if (param) then
        local this = AIAbstractRace.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end