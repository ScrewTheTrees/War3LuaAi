require("TreeCore")

Promise = { }
Promise.__index = Promise

function Promise.Create()
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("Promise.lua")
    local callbackSuccess
    local callbackError

    logger.Verbose("Started Building Promise")

    function this.Then(successCallback, errorCallback)
        callbackSuccess = successCallback
        callbackError = errorCallback
    end

    function this.Resolve(data)
        if (callbackSuccess) then
            callbackSuccess(data)
        end
    end
    function this.Reject(data)
        if (callbackError) then
            callbackError(data)
        end
    end

    logger.Verbose("Finish Building Promise")
    return this
end

function Promise.ResolveParam(param)
    if (param) then
        local this = Promise.Create()
        for k, v in pairs(param) do
            this[k] = v
        end
        return this
    end
end