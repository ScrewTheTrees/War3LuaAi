require("TreeCore")
require("CreepsModule")
require("DigestModule")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceHumanModule = { }

function AIRaceHumanModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    local logger = TreeCore.CreateLogger("AIRaceHumanModule.lua")
    logger.Verbose("Make AIRaceHumanModule")

    this.workerTypeConfig = WorkerTypeConfigDto.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.moduleWorker = WorkerHandlerModule.Create(aiPlayer, this.workerTypeConfig)

    this.moduleWorker.workerGroups.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.moduleWorker.workerGroups.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.moduleWorker.workerGroups.Set(4, 2, Ids.orderTypes.ORDER_BUILD, 1)

    this.moduleWorker.UpdateOrdersForWorkers()

    DigestModule.slowDigest.AddToDigest("raceBuild" .. tostring(aiPlayer), function()
        this.moduleWorker.constructor.ResetQuery()

        this.moduleWorker.constructor.ConstructBuildingAsQuery("halt", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.moduleWorker.constructor.ConstructBuildingAsQuery("hhou", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.moduleWorker.constructor.ConstructBuildingAsQuery("hbar", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.moduleWorker.constructor.ConstructBuildingAsQuery("hbla", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.moduleWorker.constructor.ConstructBuildingAsQuery("hhou", 99, 1, TownBuildingLocationModule.sizes.SMALL)
    end)

    logger.Verbose("Finish AIRaceHumanModule")

    return this
end

