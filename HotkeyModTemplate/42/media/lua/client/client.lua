local config = require("config")

-- @module HotkeyModTemplate.client
local client = {}

-- @function hello
-- @return void
function client.hello()
    print("HotkeyModTemplate > Hello from client!")
    print(config.dump(config))
end

-- TODO: Remove placeholder functions
client.hello()

return client
