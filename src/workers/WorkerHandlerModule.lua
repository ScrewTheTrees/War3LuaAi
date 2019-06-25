require("TreeCore")
require("workers.WorkerDto")
require("utils.Utils")
require("workers.WorkerAllocatorList")
require("towns.TownAllocatorList")
require("workers.workerGroupsList")
require("buildings.BuildingAllocatorList")
require("ArrayList")
require("Ids")
require("workers.WorkerTypeConfigDto")
require("construction.ConstructorModule")

WorkerHandlerModule = { }

function WorkerHandlerModule.Create(aiPlayer, workerTypeConfig, aiModules)
    ---@class WorkerHandlerModule
    local this = { }
    local logger = TreeCore.CreateLogger("WorkerHandlerModule.lua")
    logger.Verbose("Started Building WorkerHandlerModule")

    local function PerformWorkerOrder(worker, orderType, townIndex, hardReset)
        hardReset = hardReset or false
        if hardReset or not (worker.order == orderType) then
            if orderType == Ids.orderTypes.ORDER_DRAFTED then
                return nil
            elseif orderType == Ids.orderTypes.ORDER_BUILD then
                return nil --handled in ConstructorModule
            elseif orderType == Ids.orderTypes.ORDER_GOLDMINE then
                IssueTargetOrder(worker.unit, "harvest", aiModules.townAllocator.GetOrFirst(townIndex).mine)
                worker.order = Ids.orderTypes.ORDER_GOLDMINE
            elseif orderType == Ids.orderTypes.ORDER_WOOD then
                local loc = GetUnitLoc(aiModules.townAllocator.GetOrFirst(townIndex).hall)
                IssueTargetOrder(worker.unit, "harvest", Utils.GetClosestTreeToLocationInRange(loc, 4096))
                worker.order = Ids.orderTypes.ORDER_WOOD
                RemoveLocation(loc)
            end
        end
    end
    logger.Verbose("Built method PerformWorkerOrder")

    local function IterateOrders(group, hardReset)
        hardReset = hardReset or false
        for i, worker in ipairs(group.workerIndexes) do
            if (hardReset or not (worker.order == group.orderType)) and not (worker.order == Ids.orderTypes.ORDER_BUILD) then
                if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                    if not (aiModules.townAllocator.Get(group.townIndex) == nil) then
                        PerformWorkerOrder(worker, Ids.orderTypes.ORDER_GOLDMINE, group.townIndex, hardReset)
                    else
                        PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                    end
                end
                if group.orderType == Ids.orderTypes.ORDER_WOOD then
                    PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                end
                if (group.orderType == Ids.orderTypes.ORDER_BUILD and not (worker.order == Ids.orderTypes.ORDER_BUILD)) then
                    PerformWorkerOrder(worker, workerTypeConfig.buildIdleOrder, group.townIndex, hardReset)
                end
            end
        end
    end
    logger.Verbose("Built method IterateOrders")

    local function IterateIdles()
        IterateOrders({
            orderType = Ids.orderTypes.ORDER_WOOD,
            workerIndexes = aiModules.workerGroupsList.idleIndexes,
            townIndex = 1,
        })
    end
    logger.Verbose("Built method IterateIdles")

    function this.UpdateOrdersForWorkers(hardReset)
        hardReset = hardReset or false
        for i, group in ipairs(aiModules.workerGroupsList) do
            if (group.amountOfWorkers > #group.workerIndexes) then
                logger.Verbose(group.amountOfWorkers, ">", #group.workerIndexes)
                aiModules.workerGroupsList.PopulateIdleWorkers(i)
            end
            IterateOrders(group, hardReset)
        end
        IterateIdles(hardReset)
    end
    logger.Verbose("Built method UpdateOrdersForWorkers")

    for _, wg in ipairs(aiModules.workerAllocator) do
        aiModules.workerGroupsList.idleIndexes[#aiModules.workerGroupsList.idleIndexes + 1] = wg
    end

    this.workerAdder = {}
    this.workerAdder.trigger = CreateTrigger()
    this.workerAdder.event = TriggerRegisterPlayerUnitEvent(this.workerAdder.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_FINISH, nil)
    this.workerAdder.condition = TriggerAddCondition(this.workerAdder.trigger, Condition(function()
        return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetTrainedUnit()))))
    end))
    this.workerAdder.action = TriggerAddAction(this.workerAdder.trigger, function()
        local id = aiModules.workerAllocator.Push(WorkerDto.Create(GetTrainedUnit()))
        local worker = aiModules.workerAllocator.Get(id)
        aiModules.workerGroupsList.idleIndexes.Push(worker)
        this.UpdateOrdersForWorkers()
    end)

    this.workerRemover = {}
    this.workerRemover.trigger = CreateTrigger()
    this.workerRemover.event = TriggerRegisterPlayerUnitEvent(this.workerRemover.trigger, aiPlayer, EVENT_PLAYER_UNIT_DEATH, nil)
    this.workerAdder.condition = TriggerAddCondition(this.workerRemover.trigger, Condition(function()
        return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetDyingUnit()))))
    end))
    this.workerRemover.action = TriggerAddAction(this.workerRemover.trigger, function()
        local id = aiModules.workerAllocator.GetIndexByUnit(GetDyingUnit())
        local worker = aiModules.workerAllocator.Pop(id)
        worker.order = Ids.orderTypes.ORDER_DEAD
        aiModules.workerGroupsList.ClearWorker(worker)
        this.UpdateOrdersForWorkers()
    end)

    logger.Verbose("Finish Building WorkerHandlerModule")

    return this
end
