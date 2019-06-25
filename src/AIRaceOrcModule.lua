require("TreeCore")
require("CreepsModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceOrcModule = { }

function AIRaceOrcModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    local logger = TreeCore.CreateLogger("AIRaceOrcModule.lua")
    logger.Verbose("Make AIRaceOrcModule")

    this.workerTypeConfig = WorkerTypeConfigDto.Create("opeo", "opeo", "opeo", Ids.orderTypes.ORDER_WOOD)
    this.aiModules = AIModules.Create(aiPlayer, this.workerTypeConfig)

    this.aiModules.workerGroupsList.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.aiModules.workerGroupsList.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.aiModules.workerGroupsList.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)

    this.aiModules.workerHandlerModule.UpdateOrdersForWorkers()

    logger.Verbose("Finish AIRaceOrcModule")

    return this
end

