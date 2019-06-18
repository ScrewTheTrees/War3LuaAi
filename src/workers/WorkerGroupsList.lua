require("TreeCore")
require("ArrayList")

WorkerGroupsList = { }

---@param workerTypeConfig WorkerTypeConfigDto
function WorkerGroupsList.Create(workerTypeConfig)
    ---@class WorkerGroupsList : ArrayList
    local this = ArrayList.Create()
    local logger = TreeCore.CreateLogger("WorkerGroupsList.lua")

    logger.Verbose("Started Building WorkerGroupsList")

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
        this.logger.Critical("Not allowed operation: ", "Push", "to workGroups in:", "WorkerGroupsList", tostring(value))
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

    ---@return WorkerDto @nullable
    function this.GetIdleConstructor()
        ---@type WorkerDto
        local constructor
        this.ForEach(function(workerGroup)
            if (workerGroup.orderType == Ids.orderTypes.ORDER_BUILD) then
                ---@param worker WorkerDto
                workerGroup.workerIndexes.ForEach(function(worker)
                    if (not (worker.order == Ids.orderTypes.ORDER_BUILD or worker.order == Ids.orderTypes.ORDER_DRAFTED)) then
                        constructor = worker
                    end
                end)
            end
        end)
        return constructor
    end

    function this.ClearWorker (worker)
        this.idleIndexes.PopByReference(worker)
        for i, group in ipairs(this) do
            group.workerIndexes.PopByReference(worker)
        end
    end

    logger.Verbose("Finish Building WorkerGroupsList")
    return this
end

