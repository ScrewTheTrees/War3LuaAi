require("TreeCore")
require("utils.Utils")
require("utils.MouseLocModule")
require("utils.TargetingModule")
require("towns.TownBuildingLocationModule")

ContextBoardModule = { }
ContextBoardModule.types = {
    WORKER = "WORKER",
    BUILDINGS = "BUILDINGS",
    TICKET = "TICKET",
    TICKETWORKER = "TICKETWORKER",
    CREEP = "CREEP",
    BUILDERWORKER = "BUILDERWORKER",
}

---@class ContextBoardModule
---@param aiPlayer number
---@param aiRace AIAbstractRaceModule
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
        this.data.Push({ name = "workerGroupsList", value = #aiRace.aiModules.workerGroupsList })
        for i, e in ipairs(aiRace.aiModules.workerGroupsList) do
            this.data.Push({ name = "    " .. i, value = e.orderType .. " -> " .. #e.workerIndexes .. "/" .. e.amountOfWorkers .. " workers in town " .. e.townIndex })
            for j, u in ipairs(e.workerIndexes) do
                this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u, 3) })
            end
        end
        this.data.Push({ name = "    " .. 0, value = Ids.orderTypes.ORDER_IDLE })
        for j, u in ipairs(aiRace.aiModules.workerGroupsList.idleIndexes) do
            this.data.Push({ name = "        " .. j, value = Utils.CreateJson(u, 3) })
        end
    end

    function this.AddBuildingData()
        this.data.Push({ name = "buildings", value = #aiRace.aiModules.buildings })
        for i, e in ipairs(aiRace.aiModules.buildings) do
            this.data.Push({
                name = "    " .. i,
                value = "Town(" .. e.townIndex .. ")" .. " -> " .. GetUnitName(e.unit) .. " -> " .. e.status .. " -> " .. NameCC(e.targetType)
            })
        end
    end

    function this.AddTicketData()
        this.data.Push({ name = "tickets", value = #aiRace.aiModules.constructor.constructionList })
        ---@param e ConstructionTicketDto
        for i, e in ipairs(aiRace.aiModules.constructor.constructionList) do
            this.data.Push({
                name = "    " .. i,
                value = "targetType: " .. tostring(e.targetType) .. ", townId: " .. tostring(e.townId) .. ", target" .. tostring(e.target) .. ", worker: " .. tostring(e.worker.unit)
            })
        end
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
        elseif this.type == ContextBoardModule.types.TICKET then
            MultiboardSetTitleText(this.board, "TICKET data")
            this.AddTicketData()
        elseif this.type == ContextBoardModule.types.TICKETWORKER then
            MultiboardSetTitleText(this.board, "TICKET and WorkerDto data")
            this.AddTicketData()
            this.data.Push({ name = "-", value = "------------------------" })
            this.AddWorkerData()
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
                this.type = ContextBoardModule.types.TICKET
            elseif msg == "-c" then
                this.type = ContextBoardModule.types.CREEP
            elseif msg == "-bw" then
                this.type = ContextBoardModule.types.BUILDERWORKER
            elseif msg == "-tw" then
                this.type = ContextBoardModule.types.TICKETWORKER
            elseif msg == "-build" then
                aiRace.aiModules.constructor.ConstructBuildingAsQuery("hhou", 99, 1, TownBuildingLocationModule.sizes.MEDIUM)
            elseif msg == "-reset" then
                aiRace.aiModules.workerHandlerModule.UpdateOrdersForWorkers(true)
            end
        end, logger.Critical)
    end)

    logger.Verbose("Finish Building ContextBoardModule")
    return this
end
