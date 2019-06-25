require("TreeCore")
require("CreepsModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceUndeadModule = { }

function AIRaceUndeadModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    local logger = TreeCore.CreateLogger("AIRaceUndeadModule.lua")
    logger.Verbose("Make AIRaceUndeadModule")

    this.workerTypeConfig = WorkerTypeConfigDto.Create("uaco", "ugho", "uaco", Ids.orderTypes.ORDER_GOLDMINE)
    this.aiModules = AIModules.Create(aiPlayer, this.workerTypeConfig)

    this.aiModules.workerGroupsList.Set(1, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.aiModules.workerGroupsList.Set(1, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.aiModules.workerGroupsList.Set(2, 1, Ids.orderTypes.ORDER_WOOD, 1)
    this.aiModules.workerGroupsList.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.aiModules.workerHandlerModule.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceUndeadModule")

    return this
end

