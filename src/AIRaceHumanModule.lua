require("TreeCore")
require("Param")
require("CreepsModule")
require("workers.WorkerHandler")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceHumanModule = { }

function AIRaceHumanModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    this.type = "AIRaceHumanModule"
    local logger = TreeCore.CreateLogger("AIRaceHumanModule.lua")
    logger.Verbose("Make AIRaceHumanModule")

    this.workerTypeConfig = WorkerTypeConfig.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandler.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceHumanModule")

    return this
end

function AIRaceHumanModule.ResolveParam(param)
    if (true == false) then
        return AIRaceHumanModule.Create()
    end
    return Param.Resolve(param, "AIRaceHumanModule")
end