require("TreeCore")
require("Param")
require("utils.Utils")
require("utils.MouseLocModule")
require("utils.TargetingModule")
require("towns.TownBuildingLocationModule")

ContextBoardModule = { }
ContextBoardModule.types = {
    WORKER = "WORKER",
    BUILDINGS = "BUILDINGS",
    TARGETING = "TARGETING",
    CREEP = "CREEP",
    BUILDERWORKER = "BUILDERWORKER",
}

function ContextBoardModule.Create(aiPlayer, aiRace)
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("ContextBoardModule.lua")

    logger.Verbose("Started Building ContextBoardModule")

    this.data = ArrayList.Create()
    this.type = ContextBoardModule.types.WORKER
    this.mouse = MouseLocModule.Create(aiPlayer)
    this.targeting = TargetingModule.Create()

    this.board = CreateMultiboard()
    MultiboardSetTitleText(this.board, "Great shit!")
    MultiboardSetColumnCount(this.board, 1)
    MultiboardSetItemsStyle(this.board, true, false)
    MultiboardDisplay(this.board, true)

    local function NameCC(cc)
        if (type(cc) == "number") then
            return GetObjectName(cc)
        end

        return tostring(cc)
    end

    function this.AddWorkerData()
        this.data.Push({ name = "", value = Utils.CreateJson(aiRace.workerTypeConfig, 3) })
        this.data.Push({ name = "workerGroups", value = #aiRace.moduleWorker.workerGroups })
        for i, e in ipairs(aiRace.moduleWorker.workerGroups) do
            this.data.Push({ name = "    " .. i, value = e.orderType .. " -> " .. #e.workerIndexes .. "/" .. e.amountOfWorkers .. " workers in town " .. e.townIndex })
            for j, u in ipairs(e.workerIndexes) do
                this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u, 3) })
            end
        end
        this.data.Push({ name = "    " .. 0, value = Ids.orderTypes.ORDER_IDLE })
        for j, u in ipairs(aiRace.moduleWorker.workerGroups.idleIndexes) do
            this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u, 3) })
        end
    end

    function this.AddBuildingData()
        this.data.Push({ name = "buildings", value = #aiRace.moduleWorker.buildings })
        for i, e in ipairs(aiRace.moduleWorker.buildings) do
            this.data.Push({
                name = "    " .. i,
                value = "Town(" .. e.townIndex .. ")" .. " -> " .. GetUnitName(e.unit) .. " -> " .. e.status .. " -> " .. NameCC(e.targetType)
            })
        end
    end

    function this.AddTargetingData()
        local mouseLoc = Location(this.mouse.x, this.mouse.y)
        this.data.Push({ name = "targeting", value = "" })
        this.data.Push({ name = "    mouse", value = math.floor(this.mouse.x) .. " - " .. math.floor(this.mouse.y) })
        this.data.Push({ name = "    canBuildTown", value = this.targeting.CanBuildUnitAt("htow", mouseLoc, "hpea"), })
        this.data.Push({ name = "    canBuildFactory", value = this.targeting.CanBuildUnitAt("hbar", mouseLoc, "hpea"), })
        this.data.Push({ name = "    canBuildHarvest", value = this.targeting.CanBuildUnitAt("hlum", mouseLoc, "hpea"), })
        this.data.Push({ name = "    canBuildFarm", value = this.targeting.CanBuildUnitAt("hhou", mouseLoc, "hpea"), })
        this.data.Push({ name = "    ", value = "", })
        this.data.Push({ name = "    GetPathingAt", value = "", })
        this.data.Push({ name = "    WALKABLE", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_WALKABILITY), })
        this.data.Push({ name = "    FLYABLE", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_FLYABILITY), })
        this.data.Push({ name = "    AMPHIBIOUS", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_AMPHIBIOUSPATHING), })
        this.data.Push({ name = "    FLOAT?", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_FLOATABILITY), })
        this.data.Push({ name = "    BLIGHT", value = not this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_BLIGHTPATHING), })
        this.data.Push({ name = "    BUILD", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_BUILDABILITY), })
        this.data.Push({ name = "    PEON", value = this.targeting.GetPathingAt(mouseLoc, PATHING_TYPE_PEONHARVESTPATHING), })

        RemoveLocation(mouseLoc)
    end

    function this.AddCreepData()
        this.data.Push({ name = "CreepCamps", value = #aiRace.moduleCreep })
        this.data.Push({ name = "    mouse", value = math.floor(this.mouse.x) .. " - " .. math.floor(this.mouse.y) })
        for i, e in ipairs(aiRace.moduleCreep) do
            local unitNames = ""
            for _, u in pairs(e.units) do
                unitNames = unitNames .. ", " .. GetUnitName(u)
            end
            this.data.Push({
                name = "    " .. i,
                value = "(" .. math.floor(e.x) .. ", " .. math.floor(e.y) .. ") -> Level: " .. e.level .. " -> Enemies(" .. #e.units .. "):    " .. unitNames
            })
        end
    end

    function this.Update()
        this.data = ArrayList.Create()
        if (this.type == ContextBoardModule.types.WORKER) then
            MultiboardSetTitleText(this.board, "WorkerDto data")
            this.AddWorkerData()
        elseif this.type == ContextBoardModule.types.BUILDINGS then
            MultiboardSetTitleText(this.board, "Building data")
            this.AddBuildingData()
        elseif this.type == ContextBoardModule.types.TARGETING then
            MultiboardSetTitleText(this.board, "TargetingModule data")
            this.AddTargetingData()
        elseif this.type == ContextBoardModule.types.CREEP then
            MultiboardSetTitleText(this.board, "Creep data")
            this.AddCreepData()
        elseif this.type == ContextBoardModule.types.BUILDERWORKER then
            MultiboardSetTitleText(this.board, "Builder & WorkerDto data")
            this.AddBuildingData()
            this.data.Push({ name = "-", value = "------------------------" })
            this.AddWorkerData()
        end

        MultiboardSetItemsValue(this.board, "")
        MultiboardSetRowCount(this.board, 30)

        for i, e in ipairs(this.data) do
            local mb1 = MultiboardGetItem(this.board, i - 1, 0)
            MultiboardSetItemValue(mb1, tostring(e.name) .. ": " .. tostring(e.value))
            MultiboardSetItemWidth(mb1, 0.4)
            MultiboardReleaseItem(mb1)
        end
    end

    this.keyboard = {}
    this.keyboard.trigger = CreateTrigger()
    this.keyboard.event = TriggerRegisterPlayerChatEvent(this.keyboard.trigger, aiPlayer, "", false)
    this.keyboard.action = TriggerAddAction(this.keyboard.trigger, function()
        xpcall(function()
            local msg = GetEventPlayerChatString()
            if msg == "-w" then
                this.type = ContextBoardModule.types.WORKER
            elseif msg == "-b" then
                this.type = ContextBoardModule.types.BUILDINGS
            elseif msg == "-t" then
                this.type = ContextBoardModule.types.TARGETING
            elseif msg == "-c" then
                this.type = ContextBoardModule.types.CREEP
            elseif msg == "-bw" then
                this.type = ContextBoardModule.types.BUILDERWORKER
            elseif msg == "-build" then
                local l = TownBuildingLocationModule.Create().GetTownBuildingLocation(this.mouse.x, this.mouse.y, "hhou", "hpea", TownBuildingLocationModule.sizes.SMALL)
                CreateItem(Utils.FourCC("rde2"), GetLocationX(l), GetLocationY(l))
            elseif msg == "-reset" then
                aiRace.moduleWorker.UpdateOrdersForWorkers(true)
            end
        end, logger.Critical)
    end)

    logger.Verbose("Finish Building ContextBoardModule")
    return this
end
