require("TreeCore")
require("CreepsModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceHumanModule = { }

function AIRaceHumanModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    local logger = TreeCore.CreateLogger("AIRaceHumanModule.lua")
    logger.Verbose("Make AIRaceHumanModule")

    this.workerTypeConfig = WorkerTypeConfigDto.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandlerModule.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceHumanModule")

    return this
end

