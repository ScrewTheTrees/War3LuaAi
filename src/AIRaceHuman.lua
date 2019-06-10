require("TreeCore")
require("Param")
require("AICreep")
require("Workers.WorkerHandler")
require("AIAbstractRace")
require("Workers.WorkerTypeConfig")

AIRaceHuman = { }

function AIRaceHuman.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)
    this.type = "AIRaceHuman"
    local logger = TreeCore.CreateLogger("AIRaceHuman.lua")
    logger.Verbose("Make AIRaceHuman")

    this.workerTypeConfig = WorkerTypeConfig.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandler.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceHuman")

    return this
end

function AIRaceHuman.ResolveParam(param)
    if (true == false) then
        return AIRaceHuman.Create()
    end
    return Param.Resolve(param, "AIRaceHuman")
end