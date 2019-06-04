require("TreeCore")

AITownBuildingLocationCache = { }
AITownBuildingLocationCache.__index = AITownBuildingLocationCache

logger.Verbose("Started Building AITownBuildingLocationCache")

function AITownBuildingLocationCache.Set(type, x, y)
    if (AITownBuildingLocationCache[type] == nil) then
        AITownBuildingLocationCache[type] = {}
    end
    if (AITownBuildingLocationCache[type][x] == nil) then
        AITownBuildingLocationCache[type][x] = {}
    end
    AITownBuildingLocationCache[type][x][y] = true
end
function AITownBuildingLocationCache.Get(type, x, y)
    if (AITownBuildingLocationCache[type] == nil) then
        return nil
    end
    if (AITownBuildingLocationCache[type][x] == nil) then
        return nil
    end
    return AITownBuildingLocationCache[type][x][y]
end
function AITownBuildingLocationCache.Remove(type, x, y)
    if (AITownBuildingLocationCache[type][x] == nil) then
        return nil
    end
    if (AITownBuildingLocationCache[type][x] == nil) then
        return nil
    end
    AITownBuildingLocationCache[type][x][y] = nil
    if (#AITownBuildingLocationCache[type][x] <= 0) then
        AITownBuildingLocationCache[type][x] = nil
    end
    if (#AITownBuildingLocationCache[type] <= 0) then
        AITownBuildingLocationCache[type] = nil
    end
end