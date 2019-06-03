require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")

AIRaceNightElf = { }
AIRaceNightElf.__index = AIRaceNightElf

function AIRaceNightElf.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)

    local logger = TreeCore.CreateLogger("AIRaceNightElf.lua")
    logger.Verbose("Make AIRaceNightElf")

    this.workerTypes = {gold = "ewsp", wood = "ewsp", build = "ewsp", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceNightElf")

    return this
end