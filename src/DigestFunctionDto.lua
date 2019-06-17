DigestFunctionDto = { }

function DigestFunctionDto.Create(name, func)
    local this = { }
    this.name = name
    this.func = func
    return this
end