require("TreeCore")
require("Param")
require("CreepsModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")


AIRaceNightElfModule = { }

function AIRaceNightElfModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    this.type = "AIRaceNightElfModule"
    local logger = TreeCore.CreateLogger("AIRaceNightElfModule.lua")
    logger.Verbose("Make AIRaceNightElfModule")

    this.workerTypeConfig = WorkerTypeConfig.Create("ewsp", "ewsp", "ewsp", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandlerModule.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceNightElfModule")

    return this
end

