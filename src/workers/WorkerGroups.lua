require("TreeCore")
require("Param")
require("utils.ArrayList")

WorkerGroups = { }

function WorkerGroups.Create(workerTypeConfig)
    local this = ArrayList.Create()
    this.type = "WorkerGroups"
    local logger = TreeCore.CreateLogger("WorkerGroups.lua")

    logger.Verbose("Started Building WorkerGroups")

    this.workerTypeConfig = workerTypeConfig

    this.idleIndexes = ArrayList.Create({
        PopByUnitType = function(type)
            for i, e in ipairs(this.idleIndexes) do
                if (e.unitType == type) then
                    return this.idleIndexes.Pop(i)
                end
            end
        end
    })

    function this.Set(index, amountOfWorkers, orderType, townIndex)
        local old = this.Pop(index)
        if not (old == nil) then
            this.idleIndexes.PushArray(old.workerIndexes)
        end
        this[index] = { amountOfWorkers = amountOfWorkers, orderType = orderType, workerIndexes = ArrayList.Create(), townIndex = townIndex }
    end

    function this.Push(value)
        this.logger.Critical("Not allowed operation: ", "Push", "to workGroups in:", "WorkerGroups", tostring(value))
    end
    function this.PopulateIdleWorkers(index)
        local group = this[index]
        for j = #group.workerIndexes + 1, group.amountOfWorkers do
            local worker
            if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                worker = this.idleIndexes.PopByUnitType(this.workerTypeConfig.gold)
            elseif group.orderType == Ids.orderTypes.ORDER_WOOD then
                worker = this.idleIndexes.PopByUnitType(this.workerTypeConfig.wood)
            elseif group.orderType == Ids.orderTypes.ORDER_BUILD then
                worker = this.idleIndexes.PopByUnitType(this.workerTypeConfig.build)
            end
            if not (worker == nil) then
                group.workerIndexes[#group.workerIndexes + 1] = worker
            end
        end
    end
    function this.ClearWorker (worker)
        this.idleIndexes.PopByReference(worker)
        for i, group in ipairs(this) do
            group.workerIndexes.PopByReference(worker)
        end
    end
    --CODE

    logger.Verbose("Finish Building WorkerGroups")
    return this
end

function WorkerGroups.ResolveParam(param)
    if (true == false) then
        return WorkerGroups.Create()
    end
    return Param.Resolve(param, "WorkerGroups")
end