require("TreeCore")
require("CreepsModule")
require("DigestModule")
require("AIModules")
require("workers.WorkerHandlerModule")
require("AIAbstractRaceModule")
require("workers.WorkerTypeConfigDto")

AIRaceHumanModule = { }

function AIRaceHumanModule.Create(aiPlayer)
    local this = AIAbstractRaceModule.Create(aiPlayer)
    local logger = TreeCore.CreateLogger("AIRaceHumanModule.lua")
    logger.Verbose("Make AIRaceHumanModule")

    this.workerTypeConfig = WorkerTypeConfigDto.Create("hpea", "hpea", "hpea", Ids.orderTypes.ORDER_WOOD)
    this.aiModules = AIModules.Create(aiPlayer, this.workerTypeConfig)

    this.aiModules.workerGroupsList.Set(1, 3, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.aiModules.workerGroupsList.Set(2, 1, Ids.orderTypes.ORDER_BUILD, 1)
    this.aiModules.workerGroupsList.Set(3, 2, Ids.orderTypes.ORDER_GOLDMINE, 1)
    this.aiModules.workerGroupsList.Set(4, 2, Ids.orderTypes.ORDER_BUILD, 1)

    this.aiModules.workerHandlerModule.UpdateOrdersForWorkers()

    DigestModule.slowDigest.AddToDigest("raceBuild" .. tostring(aiPlayer), function()
        this.aiModules.constructor.ResetQuery()

        this.aiModules.constructor.ConstructBuildingAsQuery("halt", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.aiModules.constructor.ConstructBuildingAsQuery("hhou", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.aiModules.constructor.ConstructBuildingAsQuery("hbar", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.aiModules.constructor.ConstructBuildingAsQuery("hbla", 1, 1, TownBuildingLocationModule.sizes.SMALL)
        this.aiModules.constructor.ConstructBuildingAsQuery("hhou", 999, 1, TownBuildingLocationModule.sizes.SMALL)
    end)

    logger.Verbose("Finish AIRaceHumanModule")

    return this
end

