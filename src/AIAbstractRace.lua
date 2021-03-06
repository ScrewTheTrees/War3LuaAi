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