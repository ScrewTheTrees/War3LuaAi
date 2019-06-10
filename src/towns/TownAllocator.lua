require("TreeCore")
require("Param")
require("towns.Town")
require("utils.Utils")
require("utils.ArrayList")
require("Ids")

TownAllocator = { }

function TownAllocator.Create(aiPlayer)
    local this = ArrayList.Create()
    this.type = "TownAllocator"
    local logger = TreeCore.CreateLogger("TownAllocator.lua")
    logger.Verbose("Started Building TownAllocator")

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
                this.Push(Town.Create(townLoc, building, mine[1]))
            else
                local town = this.Get(this.GetClosestTownId(townLoc))
                town.hall = this
            end
        end
    end

    local mines = Utils.GetStartUnits(aiPlayer, Ids.goldmineIds)
    local halls = Utils.GetStartUnits(aiPlayer, Ids.hallIds)
    this.Push(Town.Create(GetUnitLoc(halls[1]), halls[1], mines[1]))

    logger.Verbose("Finish Building TownAllocator")
    return this
end

function TownAllocator.ResolveParam(param)
    if (true == false) then
        return TownAllocator.Create()
    end
    return Param.Resolve(param, "TownAllocator")
end