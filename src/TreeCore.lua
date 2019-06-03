require("Utils")

TreeCore = { }
TreeCore.__index = TreeCore

TreeCore.version = 1

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
            print(Utils.RGBTextString(255, 255, 0, this.name, "-> Debug ->", ...))
        end
    end
    this.Warning = function(...)
        if (this.printWarning) then
            print(Utils.RGBTextString(255, 200, 0, this.name,"-> Warning ->", ...))
        end
    end
    this.Critical = function(...)
        if (this.printCritical) then
            print(Utils.RGBTextString(255, 0, 0, this.name, "-> Critical ->", ...))
        end
    end

    return this
end