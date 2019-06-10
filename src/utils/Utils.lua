require("Ids")

Utils = { }

function Utils.FourCC(id)
    return string.unpack(">I4", id)
end
function Utils.CCInteger(id)
    return string.pack(">I4", id)
end

function Utils.ByteToHex(num)
    return string.format('%02x', num)
end

function Utils.RGBToHex(red, green, blue)
    return "00" .. Utils.ByteToHex(red) .. Utils.ByteToHex(green) .. Utils.ByteToHex(blue)
end

function Utils.RGBTextString(red, green, blue, ...)
    local ret = "|c" .. Utils.RGBToHex(red, green, blue)
    for _, v in ipairs { ... } do
        ret = ret .. tostring(v) .. " "
    end
    ret = ret .. "|r"
    return ret
end

function Utils.TableConcat(t1, t2)
    for i = 1, #t2 do
        t1[#t1 + 1] = t2[i]
    end
    return t1
end

function Utils.GetUnitsOfTypeAroundLocationInRange(unitId, location, range)
    local f = Filter(function()
        return (GetUnitTypeId(GetFilterUnit()) == Utils.FourCC(unitId))
    end)
    local g = CreateGroup()
    GroupEnumUnitsInRange(g, GetLocationX(location), GetLocationY(location), range, f)
    local unit = FirstOfGroup(g)
    local arr = {}
    while not (unit == nil) do
        arr[#arr + 1] = unit
        GroupRemoveUnit(g, unit)
        unit = FirstOfGroup(g)
    end
    DestroyFilter(f)
    DestroyGroup(g)
    return arr
end

function Utils.DistanceBetweenPoints(location1, location2)
    local x1 = GetLocationX(location1) - GetLocationX(location2)
    local y1 = GetLocationY(location1) - GetLocationY(location2)
    return math.sqrt(x1 * x1 + y1 * y1)
end

function Utils.GetClosestTreeToLocationInRange(location, range)
    local x = GetLocationX(location)
    local y = GetLocationY(location)
    local f = Filter(function()
        return Ids.IsTreeType(Utils.CCInteger(GetDestructableTypeId(GetFilterDestructable())))
    end)
    local rect = Rect(x - range, y - range, x + range, y + range)
    local target
    local targetDistance = math.huge

    EnumDestructablesInRect(rect, f, function()
        if (GetDestructableLife(GetEnumDestructable()) >= 1) then
            local destructLoc = Location(GetWidgetX(GetEnumDestructable()), GetWidgetY(GetEnumDestructable()))
            local distance = math.floor(Utils.DistanceBetweenPoints(location, destructLoc))
            RemoveLocation(destructLoc)

            if (distance < targetDistance) then
                target = GetEnumDestructable()
                targetDistance = distance
            end
        end
    end)
    return target
end

function Utils.CreateJson(input, lastDepth)
    local json = ""
    local depth = lastDepth - 1
    if (type(input) == "table") then
        if (depth >= 0) then
            json = json .. "{"
            for i, e in pairs(input) do
                json = json .. i .. ":" .. Utils.CreateJson(e, depth) .. ", "
            end
            json = json .. "}"
        else
            json = json .. "{...}"
        end
    elseif type(input) == "function" then
        json = json .. "function"
    else
        json = json .. tostring(input)
    end
    return json
end

function Utils.GetStartUnits(aiPlayer, ...)
    local loc = GetStartLocationLoc(GetPlayerStartLocation(aiPlayer))
    local arr = {}
    for _, e in pairs(...) do
        arr = Utils.TableConcat(arr, Utils.GetUnitsOfTypeAroundLocationInRange(e, loc, 2048))
    end
    RemoveLocation(loc)
    return arr
end

function Utils.GetUnitsAround(location, ...)
    local arr = {}
    for _, e in pairs(...) do
        arr = Utils.TableConcat(arr, Utils.GetUnitsOfTypeAroundLocationInRange(e, location, 2048))
    end
    return arr
end