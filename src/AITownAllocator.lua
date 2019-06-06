require("TreeCore")
require("Utils")
require("ArrayList")
require("Ids")

AITownAllocator = { }

function AITownAllocator.Create(aiPlayer)
    local this = ArrayList.Create()
    this.type = "AITownAllocator"
    local logger = TreeCore.CreateLogger("AITownAllocator.lua")

    logger.Verbose("Started Building AITownAllocator")

    --CODE
    function this.Push (location, hall, mine)
        local w = { location = location, hall = hall, mine = mine }
        this[#this + 1] = w
    end
    function this.GetClosestTownId(location)
        local closestTown = 1
        local distance = math.huge

        this.ForEach(function(value, index)
            local dist = Utils.DistanceBetweenPoints(location, value.location)
            if (dist < distance) then
                closestTown = index
                distance = dist
            end
        end)
        return closestTown
    end

    function this.MakeTown(building)
        if (Ids.IsHallId(Utils.CCInteger(GetUnitTypeId(building)))) then
            local townLoc = GetUnitLoc(building)
            if (this.GetClosestTownId(townLoc) >= 2048) then
                local mine = Utils.GetUnitsAround(townLoc, Ids.goldmineIds)
                this.Push(townLoc, building, mine[1])
            else
                local town = this.Get(this.GetClosestTownId(townLoc))
                town.hall = this
            end
        end
    end



    local mines = Utils.GetStartUnits(aiPlayer, Ids.goldmineIds)
    local halls = Utils.GetStartUnits(aiPlayer, Ids.hallIds)
    this.Push(GetUnitLoc(halls[1]), halls[1], mines[1])

    logger.Verbose("Finish Building AITownAllocator")
    return this
end

function AITownAllocator.ResolveParam(param)
    if (true == false) then
        return AITownAllocator.Create()
    end
    if (param and param.type == "AITownAllocator") then
        return param
    end
end