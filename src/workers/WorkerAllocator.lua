require("TreeCore")
require("Param")
require("utils.Utils")
require("ArrayList")
require("Ids")
require("workers.WorkerDto")

WorkerAllocator = { }

function WorkerAllocator.Create(aiPlayer)
    local this = ArrayList.Create()
    this.type = "WorkerAllocator"
    local logger = TreeCore.CreateLogger("WorkerAllocator.lua")

    logger.Verbose("Started Building WorkerAllocator")

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

    logger.Verbose("Finish Building WorkerAllocator")
    return this
end

function WorkerAllocator.ResolveParam(param)
    if (true == false) then
        return WorkerAllocator.Create()
    end
    return Param.Resolve(param, "WorkerAllocator")
end