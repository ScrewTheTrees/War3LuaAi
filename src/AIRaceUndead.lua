require("TreeCore")
require("Param")
require("Creep")
require("Workers.WorkerHandler")
require("AIAbstractRace")
require("Workers.WorkerTypeConfig")

AIRaceUndead = { }

function AIRaceUndead.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)
    this.type = "AIRaceUndead"
    local logger = TreeCore.CreateLogger("AIRaceUndead.lua")
    logger.Verbose("Make AIRaceUndead")

    this.workerTypeConfig = WorkerTypeConfig.Create("uaco", "ugho", "uaco", Ids.orderTypes.ORDER_GOLDMINE)
    this.moduleWorker = WorkerHandler.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(1, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_WOOD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceUndead")

    return this
end

function AIRaceUndead.ResolveParam(param)
    if (true == false) then
        return AIRaceUndead.Create()
    end
    return Param.Resolve(param, "AIRaceUndead")
end