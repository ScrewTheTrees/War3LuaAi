require("TreeCore")
require("Param")
require("AIRaceHumanModule")
require("AIRaceOrcModule")
require("AIRaceUndeadModule")
require("AIRaceNightElfModule")
require("ContextBoardModule")
require("ArrayList")
require("DigestModule")

AICore = { }

function AICore.Create()
    local this = { }
    this.type = "AICore"
    local logger = TreeCore.CreateLogger("AICore.lua")

    logger.Verbose("Started Building AICore")

    this.ai = ArrayList.Create()

    this.ai.Push(AIRaceHumanModule.Create(Player(0)))
    local board = ContextBoardModule.Create(Player(0), this.ai.Get(1))

    this.mainDigest = DigestModule.Create(0.1)
    this.mainDigest.AddToDigest("board", board.Update)

    logger.Verbose("Finish Building AICore")
    return this
end

function AICore.ResolveParam(param)
    if (true == false) then
        return AICore.Create()
    end
    return Param.Resolve(param, "AICore")
end