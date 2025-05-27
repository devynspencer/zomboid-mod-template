local config = require "config"

Events.OnKeyPressed.Add(function(key)
    if MainScreen.instance and not MainScreen.instance.inGame then
        print("Key pressed in main menu, ignoring: " .. tostring(key))
        return
    end

    -- print("Key pressed: " .. tostring(key))

    if key == config.HotkeyModTemplate_keybind_openjournal then
        -- Open the journal UI
        print("Opening journal...")
        -- Here you would call the function to open your journal UI
    elseif key == config.HotkeyModTemplate_keybind_markcurrent then
        -- Mark the current location
        print("Marking current location with color: " .. tostring(config.HotkeyModTemplate_colorpicker_markercolor) ..
            " and style: " .. tostring(config.HotkeyModTemplate_combobox_markerstyle))
        -- Here you would call the function to mark the current location with the specified color and style
    end
end)
