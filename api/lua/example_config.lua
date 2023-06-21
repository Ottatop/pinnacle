require("pinnacle").setup(function(pinnacle)
    local input = pinnacle.input  --Key and mouse binds
    local client = pinnacle.client --Window management
    local process = pinnacle.process -- Process spawning

    -- Every key supported by xkbcommon.
    -- Support for just putting in a string of a key is intended.
    local keys = input.keys

    -- Keybinds ----------------------------------------------------------------------
    input.keybind({ "Ctrl", "Alt" }, keys.c, client.close_window)

    -- NOTE: In tiled mode you can still move stuff around as if it's floating. Actual tiling is TODO
    input.keybind({ "Ctrl", "Alt" }, keys.space, client.toggle_floating)

    input.keybind({ "Ctrl" }, keys.Return, function()
        process.spawn("alacritty", function(stdout, stderr, exit_code, exit_msg)
            -- do something with the output here
        end)
    end)

    input.keybind({ "Ctrl" }, keys.KEY_1, function()
        process.spawn("kitty")
    end)
    input.keybind({ "Ctrl" }, keys.KEY_2, function()
        process.spawn("foot")
    end)
    input.keybind({ "Ctrl" }, keys.KEY_3, function()
        process.spawn("nautilus")
    end)
end)
