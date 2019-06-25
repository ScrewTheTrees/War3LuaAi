require("TreeCore")
require("towns.TownAllocatorList")
require("workers.WorkerAllocatorList")
require("workers.WorkerGroupsList")
require("buildings.BuildingAllocatorList")
require("construction.ConstructorModule")

AIModules = { }

---@param workerTypeConfig WorkerTypeConfigDto
function AIModules.Create(aiPlayer, workerTypeConfig)
    ---@class AIModules
    local this = { }
    local logger = TreeCore.CreateLogger("AIModules.lua")
    logger.Verbose("Started Building AIModules")

    this.townAllocator = TownAllocatorList.Create(aiPlayer)
    this.workerAllocator = WorkerAllocatorList.Create(aiPlayer)
    this.workerGroupsList = WorkerGroupsList.Create(workerTypeConfig)
    this.moduleCreep = CreepsModule.Create(aiPlayer)

    this.workerHandlerModule = WorkerHandlerModule.Create(aiPlayer, workerTypeConfig, this)
    this.buildings = BuildingAllocatorList.Create(aiPlayer, this)
    this.constructor = ConstructorModule.Create(aiPlayer, this)

    this.moduleCreep.RegenerateCreepCamps()
    logger.Verbose("Finish Building AIModules")
    return this
end