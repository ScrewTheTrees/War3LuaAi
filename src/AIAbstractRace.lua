require("TreeCore")
require("Param")

AIAbstractRace = { }

function AIAbstractRace.Create(aiPlayer)
    local this = { }
    this.type = "AIAbstractRace"
    local logger = TreeCore.CreateLogger("AIAbstractRace.lua")

    logger.Verbose("Started Building AIRaceInterface")

    if (aiPlayer==nil) then
        logger.Critical("Ai player nil, functionality will never work.")
        return nil
    end
    this.moduleCreep = Creeps.Create(aiPlayer)
    this.moduleWorker = nil

    this.moduleCreep.RegenerateCreepCamps()
    --CODE

    logger.Verbose("Finish Building AIRaceInterface")
    return this
end

function AIAbstractRace.ResolveParam(param)
    if (true == false) then
        return AIAbstractRace.Create()
    end
    return Param.Resolve(param, "AIAbstractRace")
end