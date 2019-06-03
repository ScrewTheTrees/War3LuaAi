require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")

AIRaceUndead = { }
AIRaceUndead.__index = AIRaceUndead

function AIRaceUndead.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)

    local logger = TreeCore.CreateLogger("AIRaceUndead.lua")
    logger.Verbose("Make AIRaceUndead")

    this.workerTypes = {gold = "uaco", wood = "ugho", build = "uaco", buildIdleOrder = Ids.orderTypes.ORDER_GOLDMINE}
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)

    this.moduleWorker.workerGroups.Set(1, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(1, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_WOOD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceUndead")

    return this
end