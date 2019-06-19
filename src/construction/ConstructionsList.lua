require("ArrayList")

ConstructionsList = { }

function ConstructionsList.Create()
    ---@class ConstructionsList : ArrayList
    local this = ArrayList.Create()

    ---@return ArrayList
    function this.ListByUnitType(type)
        local ret = ArrayList.Create()
        ---@param v ConstructionTicketDto
        for _, v in ipairs(this) do
            if (v.targetType == type) then
                ret.Push(v)
            end
        end

        return ret
    end

    ---@return ConstructionTicketDto
    function this.GetByTarget(unit)
        ---@param v ConstructionTicketDto
        for _, v in ipairs(this) do
            if (v.target == unit) then
                return v
            end
        end
    end

    ---@return ArrayList
    function this.ListNoTarget()
        local ret = ArrayList.Create()
        ---@param v ConstructionTicketDto
        for _, v in ipairs(this) do
            if not (v.target) then
                ret.Push(v)
            end
        end

        return ret
    end

    return this
end