require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")
require("WorkerTypeConfig")

AIRaceOrc = { }

function AIRaceOrc.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)
    this.type = "AIRaceOrc"
    local logger = TreeCore.CreateLogger("AIRaceOrc.lua")
    logger.Verbose("Make AIRaceOrc")

    this.workerTypeConfig = WorkerTypeConfig.Create("opeo", "opeo", "opeo", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceOrc")

    return this
end

function AIRaceOrc.ResolveParam(param)
    if (true == false) then
        return AIRaceOrc.Create()
    end
    if (param and param.type == "AIRaceOrc") then
        return param
    end
end