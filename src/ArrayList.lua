ArrayList = { }

---@class ArrayList
function ArrayList.Create(extension, ordered)
    local this = { }

    this.isOrdered = ordered or false

    --Constants
    function this.Get(index)
        index = index or 1
        return this[index]
    end
    function this.GetOrFirst(index)
        index = index or 1
        if (index > #this) then
            index = 1
        end
        return this[index]
    end
    function this.GetByReference(ref)
        for i, e in ipairs(this) do
            if (ref == e) then
                return this.Get(i)
            end
        end
        return nil
    end
    function this.Set(index, value)
        this[index] = value
        return this[index]
    end
    function this.Push(value)
        this[#this + 1] = value
        return #this
    end
    function this.PushArray(array)
        for _, e in ipairs(array) do
            this.Push(e)
        end
        return #this
    end
    function this.Pop(index)
        index = index or 1
        local value
        if (#this > 0) then
            if (this.isOrdered == false) then
                value = this[index]
                this[index] = this[#this]
                this[#this] = nil
            else
                value = this[index]
                for i = index, #this - 1 do
                    this[i] = this[i + 1]
                end
                this[#this] = nil
            end
        end

        return value
    end
    function this.PopByReference(ref)
        for i, e in ipairs(this) do
            if (ref == e) then
                return this.Pop(i)
            end
        end
        return nil
    end
    function this.ForEach(callback)
        for i, j in ipairs(this) do
            callback(j, i)
        end
    end

    if not (extension == nil) then
        for k, v in pairs(extension) do
            this[k] = v
        end
    end
    return this
end

