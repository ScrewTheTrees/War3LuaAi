require("TreeCore")
require("Param")
require("CreepsModule")
require("workers.WorkerHandler")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceUndeadModule = { }

function AIRaceUndeadModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    this.type = "AIRaceUndeadModule"
    local logger = TreeCore.CreateLogger("AIRaceUndeadModule.lua")
    logger.Verbose("Make AIRaceUndeadModule")

    this.workerTypeConfig = WorkerTypeConfig.Create("uaco", "ugho", "uaco", Ids.orderTypes.ORDER_GOLDMINE)
    this.moduleWorker = WorkerHandler.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(1, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_WOOD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceUndeadModule")

    return this
end

function AIRaceUndeadModule.ResolveParam(param)
    if (true == false) then
        return AIRaceUndeadModule.Create()
    end
    return Param.Resolve(param, "AIRaceUndeadModule")
end