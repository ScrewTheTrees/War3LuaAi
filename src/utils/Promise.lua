require("TreeCore")

Promise = { }

function Promise.Create()
    local this = { }
    this.type = "Promise"
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
    if (true == false) then
        return Promise.Create()
    end
    if (param and param.type == "Promise") then
        return param
    end
end