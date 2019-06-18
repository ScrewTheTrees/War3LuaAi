require("AICoreModule")
local gg_trg_Start

function MapStart()
    local logger = TreeCore.CreateLogger("main")

    local function execute()
        logger.Debug("Start")
        AICoreModule.Create()
    end

    xpcall(execute, logger.Critical)

    DestroyTrigger(gg_trg_Start)
end

function NewMain()
    gg_trg_Start = CreateTrigger()
    TriggerRegisterTimerEvent(gg_trg_Start, 0.00, false)
    TriggerAddAction(gg_trg_Start, MapStart)
end

ceres.addHook("main::after", NewMain)