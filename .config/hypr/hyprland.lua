local mainMod = "SUPER"
local terminal = "kitty"
local menu = "fuzzel"

-- Monitors
hl.monitor({output = "eDP-1",    mode = "1920x1200@60",    position = "0x0",    scale = 1})
hl.monitor({output = "HDMI-A-1", mode = "2560x1440@59.95", position = "1920x0", scale = 1})

-- Startup
hl.on("hyprland.start", function()
    hl.exec_cmd("[workspace 1 silent] "  .. terminal)
    hl.exec_cmd("[workspace 21 silent] " .. terminal)
    hl.exec_cmd("[workspace 22 silent] firefox")
    hl.exec_cmd("[workspace 23 silent] chromium")
    hl.exec_cmd("[workspace 6 silent] spotify")
    hl.exec_cmd("ashell")
    hl.exec_cmd("wpaperd")
    hl.exec_cmd("hyprctl output create headless")
end)

hl.config({
    env = {
        XCURSOR_SIZE = "24",
        QT_QPA_PLATFORMTHEME = "qt6ct",
    },

    input = {
        kb_layout = "fr",
        kb_variant = "lafayette",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },

    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 2,
        col = {
            active_border = "rgba(33ccffee) rgba(00ff99ee) 45deg",
            inactive_border = "rgba(595959aa)",
        },
        layout = "dwindle",
        allow_tearing = false,
    },

    decoration = {
        rounding = 10,
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
        },
    },

    animations = {
        enabled = true,
        bezier = {
            {name = "myBezier", points = {0.05, 0.9, 0.1, 1.05}},
        },
        animation = {
            {name = "windows",     enabled = true, speed = 7,  curve = "myBezier"},
            {name = "windowsOut",  enabled = true, speed = 7,  curve = "default", style = "popin 80%"},
            {name = "border",      enabled = true, speed = 10, curve = "default"},
            {name = "borderangle", enabled = true, speed = 8,  curve = "default"},
            {name = "fade",        enabled = true, speed = 7,  curve = "default"},
            {name = "workspaces",  enabled = true, speed = 6,  curve = "default"},
        },
    },

    dwindle = {
        preserve_split = true,
    },

    misc = {
        force_default_wallpaper = 0,
    },

    binds = {
        workspace_back_and_forth = true,
    },
})

-- KVM: pin workspaces to HDMI-A-1, fall back to headless when KVM switches away
hl.workspace_rule({workspace = "21", monitor = "HDMI-A-1", default = true})
hl.workspace_rule({workspace = "22", monitor = "HDMI-A-1"})
hl.workspace_rule({workspace = "23", monitor = "HDMI-A-1"})

-- Window rules
hl.window_rule({match = {class = ".*"}, opacity = {active = 1.0, inactive = 0.9}})
hl.window_rule({match = {class = ".*"}, suppress_event = "maximize"})

-- Lid switch binds (locked = bindl equivalent)
hl.bind("switch:on:[switch name]",  hl.dsp.exec_cmd('hyprctl keyword monitor "eDP-1, 1920x1200@60, 0x0, 1"'), {locked = true})
hl.bind("switch:off:[switch name]", hl.dsp.exec_cmd('hyprctl keyword monitor "eDP-1, disable"'),              {locked = true})

-- Keybinds
hl.bind(mainMod .. "+Return",  hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. "+Q",       hl.dsp.window.close())
hl.bind(mainMod .. "+SHIFT+Q", hl.dsp.window.close())
hl.bind(mainMod .. "+V",       hl.dsp.window.toggle_float())
hl.bind(mainMod .. "+D",       hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. "+T",       hl.dsp.exec_cmd("~/.scripts/lock_screen_wayland.sh"))
hl.bind("Print",               hl.dsp.exec_cmd('grim -g "$(slurp)"'))
hl.bind(mainMod .. "+P",       hl.dsp.exec_cmd("dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"))

-- Focus movement
hl.bind(mainMod .. "+left",  hl.dsp.window.move_focus("l"))
hl.bind(mainMod .. "+right", hl.dsp.window.move_focus("r"))
hl.bind(mainMod .. "+up",    hl.dsp.window.move_focus("u"))
hl.bind(mainMod .. "+down",  hl.dsp.window.move_focus("d"))
hl.bind(mainMod .. "+h",     hl.dsp.window.move_focus("l"))
hl.bind(mainMod .. "+l",     hl.dsp.window.move_focus("r"))
hl.bind(mainMod .. "+k",     hl.dsp.window.move_focus("u"))
hl.bind(mainMod .. "+j",     hl.dsp.window.move_focus("d"))

-- Workspaces 1-10
for i = 1, 9 do
    hl.bind(mainMod .. "+" .. i,          hl.dsp.workspace.change(i))
    hl.bind(mainMod .. "+SHIFT+" .. i,    hl.dsp.workspace.move_window(i))
end
hl.bind(mainMod .. "+0",       hl.dsp.workspace.change(10))
hl.bind(mainMod .. "+SHIFT+0", hl.dsp.workspace.move_window(10))

-- Named workspaces
hl.bind(mainMod .. "+B",       hl.dsp.workspace.change(21))
hl.bind(mainMod .. "+n",       hl.dsp.workspace.change(22))
hl.bind(mainMod .. "+M",       hl.dsp.workspace.change(23))
hl.bind(mainMod .. "+SHIFT+B", hl.dsp.workspace.move_window(21))
hl.bind(mainMod .. "+SHIFT+n", hl.dsp.workspace.move_window(22))
hl.bind(mainMod .. "+SHIFT+M", hl.dsp.workspace.move_window(23))

-- Special workspace (scratchpad)
hl.bind(mainMod .. "+S",       hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. "+SHIFT+S", hl.dsp.workspace.move_to_special("magic"))

-- Scroll through workspaces
hl.bind(mainMod .. "+mouse_down", hl.dsp.workspace.change_relative(1))
hl.bind(mainMod .. "+mouse_up",   hl.dsp.workspace.change_relative(-1))

-- Move/resize windows with mouse
hl.bind(mainMod .. "+mouse:272", hl.dsp.window.move(),   {mouse = true})
hl.bind(mainMod .. "+mouse:273", hl.dsp.window.resize(), {mouse = true})
