require("TreeCore")
require("Utils")
require("ArrayList")
require("Ids")

AIWorkerAllocator = { }
AIWorkerAllocator.__index = AIWorkerAllocator

function AIWorkerAllocator.Create(aiPlayer)
    local this = ArrayList.Create()
    --CONSTANTS
    local logger = TreeCore.CreateLogger("AIWorkerAllocator.lua")

    logger.Verbose("Started Building AIWorkerAllocator")

    function this.Push (unit)
        local w = { unit = unit, order = Ids.orderTypes.ORDER_IDLE, unitType = Utils.CCInteger(GetUnitTypeId(unit)) }
        this[#this + 1] = w
        return #this
    end
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
        this.Push(worker)
    end

    logger.Verbose("Finish Building AIWorkerAllocator")
    return this
end