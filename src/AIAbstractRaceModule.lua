require("TreeCore")
require("Param")
require("CreepsModule")

AIAbstractRaceModule = { }

function AIAbstractRaceModule.Create(aiPlayer)
    local this = { }
    this.type = "AIAbstractRaceModule"
    local logger = TreeCore.CreateLogger("AIAbstractRaceModule.lua")

    logger.Verbose("Started Building AIRaceInterface")

    if (aiPlayer==nil) then
        logger.Critical("Ai player nil, functionality will never work.")
        return nil
    end
    this.moduleCreep = CreepsModule.Create(aiPlayer)
    this.moduleWorker = nil

    this.moduleCreep.RegenerateCreepCamps()
    --CODE

    logger.Verbose("Finish Building AIRaceInterface")
    return this
end

function AIAbstractRaceModule.ResolveParam(param)
    if (true == false) then
        return AIAbstractRaceModule.Create()
    end
    return Param.Resolve(param, "AIAbstractRaceModule")
end