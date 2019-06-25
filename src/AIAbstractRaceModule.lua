require("TreeCore")
require("CreepsModule")

AIAbstractRaceModule = { }

---@return AIAbstractRaceModule
function AIAbstractRaceModule.Create(aiPlayer)
    ---@class AIAbstractRaceModule
    local this = { }
    local logger = TreeCore.CreateLogger("AIAbstractRaceModule.lua")

    logger.Verbose("Started Building AIAbstractRaceModule")

    if (aiPlayer==nil) then
        logger.Critical("Ai player nil, functionality will never work.")
        return nil
    end
    ---@type AIModules
    this.aiModules = nil

    logger.Verbose("Finish Building AIAbstractRaceModule")
    return this
end

