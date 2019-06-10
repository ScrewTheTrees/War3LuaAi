require("TreeCore")
require("Param")
require("AIRaceHuman")
require("AIRaceOrc")
require("AIRaceUndead")
require("AIRaceNightElf")
require("ContextBoard")
require("utils.ArrayList")

AICore = { }

function AICore.Create()
    local this = { }
    this.type = "AICore"
    local logger = TreeCore.CreateLogger("AICore.lua")

    logger.Verbose("Started Building AICore")

    this.ai = ArrayList.Create()

    for i = 0, GetPlayerNeutralAggressive() - 1 do
        local p = Player(i)
        if (GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) then
            local race = GetPlayerRace(p)
            if race == RACE_HUMAN then
                this.ai.Push(AIRaceHuman.Create(Player(i)))
            elseif race == RACE_ORC then
                this.ai.Push(AIRaceOrc.Create(Player(i)))
            elseif race == RACE_UNDEAD then
                this.ai.Push(AIRaceUndead.Create(Player(i)))
            elseif race == RACE_NIGHTELF then
                this.ai.Push(AIRaceNightElf.Create(Player(i)))
            end
        end
    end

    local board = ContextBoard.Create(Player(0), this.ai.Get(1))

    this.timer = 0

    this.workerRunner = { trigger = CreateTrigger(), enabled = true }
    function this.workerThread()
        xpcall(board.Update, logger.Critical)
    end

    TriggerRegisterTimerEvent(this.workerRunner.trigger, 0.1, true)
    TriggerAddAction(this.workerRunner.trigger, this.workerThread)

    logger.Verbose("Finish Building AICore")
    return this
end

function AICore.ResolveParam(param)
    if (true == false) then
        return AICore.Create()
    end
    return Param.Resolve(param, "AICore")
end