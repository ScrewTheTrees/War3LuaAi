require("TreeCore")
require("Param")

MouseLocModule = { }

function MouseLocModule.Create(aiPlayer)
    local this = { }
    local logger = TreeCore.CreateLogger("MouseLocModule.lua")

    logger.Verbose("Started Building MouseLocModule")
    this.x = 0
    this.y = 0

    --CODE


    this.mouseMove = {}
    this.mouseMove.trigger = CreateTrigger()
    this.mouseMove.event = TriggerRegisterPlayerEvent(this.mouseMove.trigger, aiPlayer, EVENT_PLAYER_MOUSE_MOVE)
    this.mouseMove.action = TriggerAddAction(this.mouseMove.trigger, function()
        this.x = BlzGetTriggerPlayerMouseX()
        this.y = BlzGetTriggerPlayerMouseY()
    end)

    logger.Verbose("Finish Building MouseLocModule")
    return this
end

