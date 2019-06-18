require("ArrayList")

ConstructionsList = { }

function ConstructionsList.Create()
    ---@class ConstructionsList : ArrayList
    local this = ArrayList.Create()

    function this.GetByUnitType(type)
        local ret = ArrayList.Create()
        ---@param v ConstructionTicketDto
        for _, v in ipairs(this) do
            if (v.targetType == type) then
                ret.Push(v)
            end
        end

        return ret
    end

    return this
end