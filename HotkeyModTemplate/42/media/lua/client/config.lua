local config = {}

-- Configure module options using ModOptions API
local options = PZAPI.ModOptions:create("HotkeyModTemplate", "Hotkey Mod Template Options")
options:addTitle("Hotkey Mod Template Options")
options:addDescription("This is a template for creating a mod with hotkeys and options.")
options:addSeparator()

-- ModOptions keybind example
options:addSeparator()
options:addDescription("My keybinds for this mod")

options:addKeyBind("HotkeyModTemplate_keybind_openjournal", "Open journal", Keyboard.KEY_J)
options:addKeyBind("HotkeyModTemplate_keybind_markcurrent", "Mark current location", Keyboard.KEY_K)
options:addColorPicker("HotkeyModTemplate_colorpicker_markercolor", "Marker color", 255, 0, 0, 255)

local marker_style_combo = options:addComboBox("HotkeyModTemplate_combobox_markerstyle", "Marker style")
marker_style_combo:addItem("X")
marker_style_combo:addItem("Checkmark")
marker_style_combo:addItem("Target")
marker_style_combo:addItem("Exclamation")
marker_style_combo:addItem("Heart")

-- Helper function to apply options
options.apply = function(self)
    for k, v in pairs(self.dict) do
        if v.type == "multipletickbox" then
            for i = 1, #v.values do
                config[(k .. "_" .. tostring(i))] = v:getValue(i)
            end
        elseif v.type == "button" then
            -- do nothing
        else
            config[k] = v:getValue()
        end
    end
end

Events.OnMainMenuEnter.Add(function()
    -- Load the configuration from the ModOptions
    -- options:load()

    -- Apply the loaded configuration
    options:apply()
end)

-- Return config object so it can be used as a module
return config
