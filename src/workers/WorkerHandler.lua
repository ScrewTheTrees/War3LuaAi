require("TreeCore")
require("Param")
require("workers.Worker")
require("utils.Utils")
require("workers.WorkerAllocator")
require("towns.TownAllocator")
require("workers.WorkerGroups")
require("buildings.BuildingsAllocator")
require("ArrayList")
require("Ids")
require("workers.WorkerTypeConfig")
require("construction.Constructor")

WorkerHandler = { }

WorkerHandler.Create = function(aiPlayer, workerTypeConfig)
    local this = { }
    this.type = "AIWorker"
    local logger = TreeCore.CreateLogger("WorkerHandler.lua")
    logger.Verbose("Started Building AIWorker")

    this.workerTypeConfig = WorkerTypeConfig.ResolveParam(workerTypeConfig)

    this.townAllocator = TownAllocator.Create(aiPlayer)
    this.workerAllocator = WorkerAllocator.Create(aiPlayer)
    this.workerGroups = WorkerGroups.Create(workerTypeConfig)

    this.buildings = BuildingsAllocator.Create(aiPlayer, this.townAllocator)
    this.constructor = Constructor.Create(this.workerGroups, this.buildings, this.townAllocator)

    local function PerformWorkerOrder(worker, orderType, townIndex, hardReset)
        hardReset = hardReset or false
        if hardReset or not (worker.order == orderType) then
            if orderType == Ids.orderTypes.ORDER_DRAFTED then
                return nil
            elseif orderType == Ids.orderTypes.ORDER_BUILD then
                return nil
            elseif orderType == Ids.orderTypes.ORDER_GOLDMINE then
                IssueTargetOrder(worker.unit, "harvest", this.townAllocator.GetOrFirst(townIndex).mine)
                worker.order = Ids.orderTypes.ORDER_GOLDMINE
            elseif orderType == Ids.orderTypes.ORDER_WOOD then
                local loc = GetUnitLoc(this.townAllocator.GetOrFirst(townIndex).hall)
                IssueTargetOrder(worker.unit, "harvest", Utils.GetClosestTreeToLocationInRange(loc, 4096))
                worker.order = Ids.orderTypes.ORDER_WOOD
                RemoveLocation(loc)
            end
        end
    end

    local function IterateOrders(group, hardReset)
        hardReset = hardReset or false
        for i, worker in ipairs(group.workerIndexes) do
            if (hardReset or not (worker.order == group.orderType)) and not (worker.order == Ids.orderTypes.ORDER_BUILD) then
                if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                    if not (this.townAllocator.Get(group.townIndex) == nil) then
                        PerformWorkerOrder(worker, Ids.orderTypes.ORDER_GOLDMINE, group.townIndex, hardReset)
                    else
                        PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                    end
                end
                if group.orderType == Ids.orderTypes.ORDER_WOOD then
                    PerformWorkerOrder(worker, Ids.orderTypes.ORDER_WOOD, group.townIndex, hardReset)
                end
                if (group.orderType == Ids.orderTypes.ORDER_BUILD and not (worker.order == Ids.orderTypes.ORDER_BUILD)) then
                    PerformWorkerOrder(worker, this.workerTypeConfig.buildIdleOrder, group.townIndex, hardReset)
                end
            end
        end
    end

    local function IterateIdles()
        IterateOrders({
            orderType = Ids.orderTypes.ORDER_WOOD,
            workerIndexes = this.workerGroups.idleIndexes,
            townIndex = 1,
        })
    end

    function this.UpdateOrdersForWorkers(hardReset)
        hardReset = hardReset or false
        for i, group in ipairs(this.workerGroups) do
            if (group.amountOfWorkers > #group.workerIndexes) then
                logger.Verbose(group.amountOfWorkers, ">", #group.workerIndexes)
                this.workerGroups.PopulateIdleWorkers(i)
            end
            IterateOrders(group, hardReset)
        end
        IterateIdles(hardReset)
    end

    for i, wg in ipairs(this.workerAllocator) do
        this.workerGroups.idleIndexes[#this.workerGroups.idleIndexes + 1] = wg
    end

    this.workerAdder = {}
    this.workerAdder.trigger = CreateTrigger()
    this.workerAdder.event = TriggerRegisterPlayerUnitEvent(this.workerAdder.trigger, aiPlayer, EVENT_PLAYER_UNIT_TRAIN_FINISH, nil)
    this.workerAdder.condition = TriggerAddCondition(this.workerAdder.trigger, Condition(function()
        return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetTrainedUnit()))))
    end))
    this.workerAdder.action = TriggerAddAction(this.workerAdder.trigger, function()
        local id = this.workerAllocator.Push(Worker.Create(GetTrainedUnit()))
        local worker = this.workerAllocator.Get(id)
        this.workerGroups.idleIndexes.Push(worker)
        this.UpdateOrdersForWorkers()
    end)

    this.workerRemover = {}
    this.workerRemover.trigger = CreateTrigger()
    this.workerRemover.event = TriggerRegisterPlayerUnitEvent(this.workerRemover.trigger, aiPlayer, EVENT_PLAYER_UNIT_DEATH, nil)
    this.workerAdder.condition = TriggerAddCondition(this.workerRemover.trigger, Condition(function()
        return (Ids.IsPeonId(Utils.CCInteger(GetUnitTypeId(GetDyingUnit()))))
    end))
    this.workerRemover.action = TriggerAddAction(this.workerRemover.trigger, function()
        local id = this.workerAllocator.GetIndexByUnit(GetDyingUnit())
        local worker = this.workerAllocator.Pop(id)
        worker.order = Ids.orderTypes.ORDER_DEAD
        this.workerGroups.ClearWorker(worker)
        this.UpdateOrdersForWorkers()
    end)

    logger.Verbose("Finish Building AIWorker")

    return this
end
function WorkerHandler.ResolveParam(param)
    if (true == false) then
        return WorkerHandler.Create()
    end
    return Param.Resolve(param, "WorkerHandler")
end