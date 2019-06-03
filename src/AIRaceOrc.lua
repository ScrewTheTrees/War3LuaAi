require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")

AIRaceOrc = { }
AIRaceOrc.__index = AIRaceOrc

function AIRaceOrc.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)

    local logger = TreeCore.CreateLogger("AIRaceOrc.lua")
    logger.Verbose("Make AIRaceOrc")

    this.workerTypes = {gold = "opeo", wood = "opeo", build = "opeo", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceOrc")

    return this
end