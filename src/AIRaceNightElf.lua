require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")
require("WorkerTypeConfig")


AIRaceNightElf = { }

function AIRaceNightElf.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)
    this.type = "AIRaceNightElf"
    local logger = TreeCore.CreateLogger("AIRaceNightElf.lua")
    logger.Verbose("Make AIRaceNightElf")

    this.workerTypeConfig = WorkerTypeConfig.Create("ewsp", "ewsp", "ewsp", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceNightElf")

    return this
end

function AIRaceNightElf.ResolveParam(param)
    if (true == false) then
        return AIRaceNightElf.Create()
    end
    if (param and param.type == "AIRaceNightElf") then
        return param
    end
end