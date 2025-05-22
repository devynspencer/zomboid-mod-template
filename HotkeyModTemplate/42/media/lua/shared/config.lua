-- TODO: Replace placeholder properties with actual mod properties (ideally from mod.info once loaded)

-- @module HotkeyModTemplate.config
-- @field modName string
-- @field modId string
-- @field modDescription string
-- @field modUri string
-- @field modVersion string
-- @field modAuthor string
-- @field minVersion string
-- @field maxVersion string
-- @field getModName function
-- @field getModVersion function
-- @field dump function
local config = {
    modName = "HotkeyModTemplate",
    modId = "HotkeyModTemplate",
    modDescription = "A template for creating Project Zomboid mods with hotkeys.",
    modUri = "https://github.com/devynspencer/zomboid-mod-template",
    modVersion = "0.0.0",
    modAuthor = "devdog_unlimited",
    minVersion = "42.78",
    maxVersion = "42.78",
}

-- @function getModName
-- @return string
function config.getModName()
    return config.modName
end

-- @function getModVersion
-- @return string
function config.getModVersion()
    return config.modVersion
end

-- @function dump
-- @param obj any
-- @return string
function config.dump(obj)
    if type(obj) == "table" then
        local s = "{ "
        for k, v in pairs(obj) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. config.dump(v) .. ','
        end
        return s .. " }"
    else
        return tostring(obj)
    end
end

return config
