DigestFunctionDto = { }

function DigestFunctionDto.Create(name, func)
    local this = { }
    this.type = "DigestFunctionDto"
    this.name = name
    this.func = func
    return this
end