Ids = { }

Ids.hallIds = {
    htow = "htow",
    hkee = "hkee",
    hcas = "hcas",
    ogre = "ogre",
    ostr = "ostr",
    ofrt = "ofrt",
    unpl = "unpl",
    unp1 = "unp1",
    unp2 = "unp2",
    etol = "etol",
    etoa = "etoa",
    etoe = "etoe",
    nntt = "nntt",
}

Ids.peonIds = {
    hpea = "hpea",
    opeo = "opeo",
    uaco = "uaco",
    ewsp = "ewsp",
    nmpe = "nmpe",
    hmil = "hmil",
    ugho = "ugho",
}
Ids.goldmineIds = {
    ngol = "ngol",
    ugol = "ugol",
    egol = "egol",
}
---@class OrderTypes
Ids.orderTypes = {
    ORDER_DEAD = "ORDER_DEAD",
    ORDER_IDLE = "ORDER_IDLE",
    ORDER_GOLDMINE = "ORDER_GOLDMINE",
    ORDER_WOOD = "ORDER_WOOD",
    ORDER_BUILD = "ORDER_BUILD",
    ORDER_DRAFTED = "ORDER_DRAFTED",
}

Ids.treeTypes = {
    ATtr = "ATtr",
    BTtw = "BTtw",
    KTtw = "KTtw",
    YTft = "YTft",
    JYct = "JYct",
    JTct = "JTct",
    YTst = "YTst",
    YTct = "YTct",
    YTtw = "YTtw",
    JTtw = "JTtw",
    DTsh = "DTsh",
    FTtw = "FTtw",
    CTtr = "CTtr",
    ITtw = "ITtw",
    NTtw = "NTtw",
    OTtw = "OTtw",
    ZTtw = "ZTtw",
    WTst = "WTst",
    LTlt = "LTlt",
    GTsh = "GTsh",
    VTlt = "VTlt",
    WTtw = "WTtw",
    ATtc = "ATtc",
    BTtc = "BTtc",
    CTtc = "CTtc",
    ITtc = "ITtc",
    NTtc = "NTtc",
    ZTtc = "ZTtc",
}

function Ids.IsHallId(type)
    return not (Ids.hallIds[type] == nil)
end
function Ids.IsPeonId(type)
    return not (Ids.peonIds[type] == nil)
end
function Ids.IsGoldmineId(type)
    return not (Ids.goldmineIds[type] == nil)
end
function Ids.IsTreeType(type)
    return not (Ids.treeTypes[type] == nil)
end