require("TreeCore")
require("Param")
require("CreepsModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceOrcModule = { }

function AIRaceOrcModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    this.type = "AIRaceOrcModule"
    local logger = TreeCore.CreateLogger("AIRaceOrcModule.lua")
    logger.Verbose("Make AIRaceOrcModule")

    this.workerTypeConfig = WorkerTypeConfig.Create("opeo", "opeo", "opeo", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandlerModule.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceOrcModule")

    return this
end

function AIRaceOrcModule.ResolveParam(param)
    if (true == false) then
        return AIRaceOrcModule.Create()
    end
    return Param.Resolve(param, "AIRaceOrcModule")
end