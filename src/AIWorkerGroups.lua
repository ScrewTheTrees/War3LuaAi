require("TreeCore")
require("ArrayList")

AIWorkerGroups = { }
AIWorkerGroups.__index = AIWorkerGroups

function AIWorkerGroups.Create(workerTypes)
    local this = ArrayList.Create()
    --Constants
    local logger = TreeCore.CreateLogger("AIWorkerGroups.lua")

    logger.Verbose("Started Building AIWorkerGroups")

    this.workerTypes = workerTypes

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
        this.logger.Critical("Not allowed operation: ", "Push", "to workGroups in:", "AIWorkerGroups", tostring(value))
    end
    function this.PopulateIdleWorkers(index)
        local group = this[index]
        for j = #group.workerIndexes + 1, group.amountOfWorkers do
            local worker
            if group.orderType == Ids.orderTypes.ORDER_GOLDMINE then
                worker = this.idleIndexes.PopByUnitType(this.workerTypes.gold)
            elseif group.orderType == Ids.orderTypes.ORDER_WOOD then
                worker = this.idleIndexes.PopByUnitType(this.workerTypes.wood)
            elseif group.orderType == Ids.orderTypes.ORDER_BUILD then
                worker = this.idleIndexes.PopByUnitType(this.workerTypes.build)
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

    logger.Verbose("Finish Building AIWorkerGroups")
    return this
end