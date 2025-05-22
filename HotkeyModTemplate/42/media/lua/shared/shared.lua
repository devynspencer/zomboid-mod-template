local config = require("config")

-- @module HotkeyModTemplate
-- @field config table
-- @field client table
-- @field server table
local HotkeyModTemplate = {
    config = config,
    -- TODO: Add other shared functions or variables here
    -- TODO: do we want both client & server submodules here?
    --       when can they be required?
    --       should they use the `x = x or {}` idiom?
    client = {},
    server = {},
}

return HotkeyModTemplate
