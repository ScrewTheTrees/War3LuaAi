require("TreeCore")

MouseLoc = { }
MouseLoc.__index = MouseLoc

function MouseLoc.Create(aiPlayer)
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("MouseLoc.lua")

    logger.Verbose("Started Building MouseLoc")
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

    logger.Verbose("Finish Building MouseLoc")
    return this
end