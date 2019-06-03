require("TreeCore")

${NAME} = { }
${NAME}.__index = ${NAME}

function ${NAME}.Create()
    local this = { }
    --Constants
    local logger = TreeCore.CreateLogger("${NAME}.lua")
    
    logger.Verbose("Started Building ${NAME}")
    
    --CODE
    
    logger.Verbose("Finish Building ${NAME}")
    return this
end