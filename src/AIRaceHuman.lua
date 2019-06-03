require("TreeCore")
require("AICreep")
require("AIWorker")
require("AIAbstractRace")

AIRaceHuman = { }
AIRaceHuman.__index = AIRaceHuman

function AIRaceHuman.Create(aiPlayer)
    local this = AIAbstractRace.Create(aiPlayer)

    local logger = TreeCore.CreateLogger("AIRaceHuman.lua")
    logger.Verbose("Make AIRaceHuman")

    this.workerTypes = {gold = "hpea", wood = "hpea", build = "hpea", buildIdleOrder = Ids.orderTypes.ORDER_WOOD}
    this.moduleWorker = AIWorker.Create(aiPlayer, this.workerTypes)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(4, 5, Ids.orderTypes.ORDER_GOLDMINE, 2)

    this.moduleWorker.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceHuman")

    return this
end