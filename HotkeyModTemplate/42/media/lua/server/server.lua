-- TODO: Should client/server be importing this directly? Or the entire shared module, i.e. `require("HotkeyModTemplate")`?
local config = require("config")

-- @module HotkeyModTemplate.server
local server = {}

-- @function hello
-- @return void
function server.hello()
    print("HotkeyModTemplate > Hello from server!")
    print(config.dump(config))
end

-- TODO: Remove placeholder functions
server.hello()

return server
