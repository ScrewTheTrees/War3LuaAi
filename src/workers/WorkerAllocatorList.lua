require("TreeCore")
require("Param")
require("utils.Utils")
require("ArrayList")
require("Ids")
require("workers.WorkerDto")

WorkerAllocatorList = { }

function WorkerAllocatorList.Create(aiPlayer)
    local this = ArrayList.Create()
    this.type = "WorkerAllocatorList"
    local logger = TreeCore.CreateLogger("WorkerAllocatorList.lua")

    logger.Verbose("Started Building WorkerAllocatorList")

    function this.GetByUnit (unit)
        for i = 1, #this do
            if (this[i].unit == unit) then
                return this[i]
            end
        end
        return nil
    end
    function this.GetIndexByUnit(unit)
        for i = 1, #this do
            if (this[i].unit == unit) then
                return i
            end
        end
        return nil
    end

    local peons = Utils.GetStartUnits(aiPlayer, Ids.peonIds)
    for _, worker in ipairs(peons) do
        this.Push(WorkerDto.Create(worker))
    end

    logger.Verbose("Finish Building WorkerAllocatorList")
    return this
end

function WorkerAllocatorList.ResolveParam(param)
    if (true == false) then
        return WorkerAllocatorList.Create()
    end
    return Param.Resolve(param, "WorkerAllocatorList")
end