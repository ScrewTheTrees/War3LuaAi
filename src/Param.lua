require("TreeCore")

Param = { }

function Param.Resolve(param, name)
    if (param) then
        if (param.type == name) then
            return param
        else
            TreeCore.CriticalGeneric("expected:", name, "got: ", param.type)
        end
    else
        TreeCore.DebugGeneric(param, "is nil")
    end
end