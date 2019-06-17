require("TreeCore")
require("Param")
require("AIRaceHumanModule")
require("AIRaceOrcModule")
require("AIRaceUndeadModule")
require("AIRaceNightElfModule")
require("ContextBoardModule")
require("ArrayList")
require("DigestModule")

AICoreModule = { }

---@class AICoreModule
function AICoreModule.Create()
    local this = { }
    local logger = TreeCore.CreateLogger("AICoreModule.lua")

    logger.Verbose("Started Building AICoreModule")

    this.ai = ArrayList.Create()

    this.ai.Push(AIRaceHumanModule.Create(Player(0)))
    local board = ContextBoardModule.Create(Player(0), this.ai.Get(1))

    this.mainDigest = DigestModule.Create(0.1)
    this.mainDigest.AddToDigest("board", board.Update)

    logger.Verbose("Finish Building AICoreModule")
    return this
end

