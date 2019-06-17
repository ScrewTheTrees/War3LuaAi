TreeCore = { }
TreeCore.__index = TreeCore

TreeCore.version = 2

TreeCore.printVerbose = false
TreeCore.printDebug = true
TreeCore.printWarning = true
TreeCore.printCritical = true

TreeCore.uuidLength = 6

-- Version 1 API
---@class Logger
function TreeCore.CreateLogger(name)
    local this = {};
    setmetatable(this, TreeCore)
    this.name = tostring(name)
    this.uuid = TreeCore.CreateUuid()
    this.Verbose = function(...)
        if (this.printVerbose) then
            local s = "[%s]%s->Verbose->"
            print(s:format(this.uuid:sub(0, this.uuidLength), this.name), ...)
        end
    end
    this.Debug = function(...)
        if (this.printDebug) then
            local s = "[%4s]%s->Debug->"
            print(TreeCore.RGBTextString(255, 255, 0, s:format(this.uuid:sub(0, this.uuidLength), this.name), ...))
        end
    end
    this.Warning = function(...)
        if (this.printWarning) then
            local s = "[%s]%s->Warning->"
            print(TreeCore.RGBTextString(255, 200, 0, s:format(this.uuid:sub(0, this.uuidLength), this.name), ...))
        end
    end
    this.Critical = function(...)
        if (this.printCritical) then
            local s = "[%s]%s->Critical->"
            print(TreeCore.RGBTextString(255, 0, 0, s:format(this.uuid:sub(0, this.uuidLength), this.name), ...))
        end
    end
    return this
end

function TreeCore.RGBTextString(red, green, blue, ...)
    local ret = "|c" .. Utils.RGBToHex(red, green, blue)
    for _, v in ipairs { ... } do
        ret = ret .. tostring(v) .. " "
    end
    ret = ret .. "|r"
    return ret
end


-- Version 2
function TreeCore.CreateUuid()
    local template = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
    return string.gsub(template, '[xy]', function(c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end)
end

TreeCore.logger = TreeCore.CreateLogger("Generic")
function TreeCore.VerboseGeneric(...)
    TreeCore.logger.Verbose(...)
end
function TreeCore.DebugGeneric(...)
    TreeCore.logger.Debug(...)
end
function TreeCore.WarningGeneric(...)
    TreeCore.logger.Warning(...)
end
function TreeCore.CriticalGeneric(...)
    TreeCore.logger.Critical(...)
end