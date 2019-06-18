require("TreeCore")
require("AIRaceHumanModule")
require("AIRaceOrcModule")
require("AIRaceUndeadModule")
require("AIRaceNightElfModule")
require("ContextBoardModule")
require("ArrayList")
require("DigestModule")

AICoreModule = { }

function AICoreModule.Create()
    ---@class AICoreModule
    local this = { }
    local logger = TreeCore.CreateLogger("AICoreModule.lua")
    logger.Verbose("Started Building AICoreModule")

    DigestModule.mainDigest = DigestModule.Create(0.1)
    DigestModule.slowDigest = DigestModule.Create(1)

    this.ai = ArrayList.Create()

    this.ai.Push(AIRaceHumanModule.Create(Player(0)))
    local board = ContextBoardModule.Create(Player(0), this.ai.Get(1))

    DigestModule.mainDigest.AddToDigest("board", board.Update)

    logger.Verbose("Finish Building AICoreModule")
    return this
end

