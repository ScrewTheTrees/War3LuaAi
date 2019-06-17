require("TreeCore")
require("Param")

Promise = { }

function Promise.Create()
    local this = { }
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

