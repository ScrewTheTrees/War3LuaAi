require("Param")

DigestFunctionDto = { }

function DigestFunctionDto.Create(name, func)
    local this = { }
    this.type = "DigestFunctionDto"
    this.name = name
    this.func = func
    return this
end

function DigestFunctionDto.ResolveParam(param)
    if (true == false) then
        return DigestFunctionDto.Create()
    end
    return Param.Resolve(param, "DigestFunctionDto")
end