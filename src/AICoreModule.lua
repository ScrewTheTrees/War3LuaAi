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

function AICoreModule.Create()
    local this = { }
    this.type = "AICoreModule"
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

function AICoreModule.ResolveParam(param)
    if (true == false) then
        return AICoreModule.Create()
    end
    return Param.Resolve(param, "AICoreModule")
end