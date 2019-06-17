require("TreeCore")
require("Param")
require("ArrayList")
require("DigestFunctionDto")

DigestModule = { }

function DigestModule.Create(interval)
    local this = { }
    this.type = "DigestModule"
    local logger = TreeCore.CreateLogger("DigestModule.lua")
    logger.Verbose("Started Building DigestModule")

    this.additionalFunc = ArrayList.Create()

    this.digest = { trigger = CreateTrigger() }
    this.digest.event = TriggerRegisterTimerEvent(this.digest.trigger, interval, true)
    this.digest.action = TriggerAddAction(this.digest.trigger, function()
        logger.Verbose("DigestModule")
        this.additionalFunc.ForEach(function(func)
            local digestFunc = func
            xpcall(digestFunc.func, logger.Critical)
        end)
    end)

    function this.AddToDigest(name, func)
        this.additionalFunc.Push(DigestFunctionDto.Create(name, func))
    end
    function this.RemoveFromDigest(name)
        this.additionalFunc.ForEach(function (element)
            local digestFunc = element
            if (digestFunc.name == name) then
                this.additionalFunc.PopByReference(index)
            end
        end)
    end

    logger.Verbose("Finish Building DigestModule")
    return this
end

