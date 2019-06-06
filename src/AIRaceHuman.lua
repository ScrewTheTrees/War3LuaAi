require("TreeCore")
require("AICreep")
require("aiWorkers.AIWorker")
require("AIAbstractRace")
require("aiWorkers.WorkerTypeConfig")

AIRaceHuman = { }

function AIRaceHuman.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)
    this.type = "AIRaceHuman"
    local logger = TreeCore.CreateLogger("AIRaceHuman.lua")
    logger.Verbose("Make AIRaceHuman")

    this.workerTypeConfig = WorkerTypeConfig.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(4, 5, Ids.orderTypes.ORDER_GOLDMINE, 2)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceHuman")

    return this
end

function AIRaceHuman.ResolveParam(param)
    if (true == false) then
        return AIRaceHuman.Create()
    end
    if (param and param.type == "AIRaceHuman") then
        return param
    end
end