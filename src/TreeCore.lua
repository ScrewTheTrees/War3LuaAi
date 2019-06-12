TreeCore = { }

TreeCore.version = 2

TreeCore.printVerbose = false
TreeCore.printDebug = true
TreeCore.printWarning = true
TreeCore.printCritical = true

-- Version 1 API
function TreeCore.CreateLogger(name)
    local this = {};
    setmetatable(this, TreeCore)
    this.name = tostring(name);
    this.Verbose = function(...)
        if (this.printVerbose) then
            print(this.name, "-> Verbose ->", ...)
        end
    end
    this.Debug = function(...)
        if (this.printDebug) then
            print(TreeCore.RGBTextString(255, 255, 0, this.name, "-> Debug ->", ...))
        end
    end
    this.Warning = function(...)
        if (this.printWarning) then
            print(TreeCore.RGBTextString(255, 200, 0, this.name,"-> Warning ->", ...))
        end
    end
    this.Critical = function(...)
        if (this.printCritical) then
            print(TreeCore.RGBTextString(255, 0, 0, this.name, "-> Critical ->", ...))
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
