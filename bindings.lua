-- Mirrored from bindings.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; bindings.conf remains active.

local terminal = "uwsm app -- ghostty-host-config"
local file_manager = "uwsm app -- thunar"
local browser_personal = [[uwsm app -- chromium --new-window --ozone-platform=wayland --profile-directory="Default" --force-device-scale-factor=0.8]]
local browser_work = "launch-work-browser"
local discord = "launch-work-discord"
local slack = "launch-work-slack"

-- Resume recovery
o.bind("SUPER + SHIFT + W", "Resume recovery", "on-resume")

-- Hyprland runs all binds for the same chord in order; unbind clears default bindings first.
hl.unbind("SUPER + TAB")
hl.unbind("CTRL + ALT + TAB")
hl.unbind("CTRL + ALT + SHIFT + TAB")
o.bind("SUPER + TAB", "Workspace relayout", "~/.local/bin/workspace-relayout")
o.bind("SUPER + ALT + W", "Workspace menu", "workspace-menu")
o.bind("SUPER + ALT + D", "Dot menu", "uwsm app -- xdg-terminal-exec --app-id=TUI.float -e dot tui")

-- Screen recording
o.bind("SHIFT + ALT + PRINT", "Screenrecording", "omarchy screenrecord")

-- Terminal
o.bind("SUPER + RETURN", "Terminal", terminal .. " --working-directory $(omarchy-cmd-terminal-cwd)")
o.bind("SUPER + SHIFT + RETURN", "Floating Terminal", "uwsm app -- xdg-terminal-exec --app-id=org.omarchy.terminal")
o.bind("SUPER + Q", "Terminal", terminal)
o.bind("SUPER + SHIFT + Q", "Floating Terminal", "uwsm app -- xdg-terminal-exec --app-id=org.omarchy.terminal")
o.bind("SUPER + ALT + RETURN", "Tmux", [[uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)" tmux new]])

-- Bluetooth
o.bind("SUPER + ALT + CTRL + B", "Bluetooth", [[DEVICE="$(bluetoothctl devices | grep -i 'MOMENTUM 4' | awk '{print $2}')" && bluetoothctl disconnect "$DEVICE" && sleep 1 && bluetoothctl connect "$DEVICE"]])

-- File manager
o.bind("SUPER + E", "File manager", file_manager)

-- Browser
o.bind("SUPER + B", "Browser", browser_personal)
o.bind("SUPER + SHIFT + B", "Browser (private)", browser_personal .. " --private")
o.bind("SUPER + ALT + B", "Browser Work", browser_work)

-- Chat and apps
o.bind("SUPER + SHIFT + S", "Slack", slack)
o.bind("SUPER + M", "Music", [[omarchy-launch-webapp "https://music.youtube.com"]])
o.bind("SUPER + N", "Obsidian", [[omarchy-launch-or-focus ^obsidian$ "uwsm-app -- obsidian"]])
o.bind("SUPER + SHIFT + D", "Docker", "omarchy-launch-tui timmo-run-command lazydocker")
o.bind("SUPER + SLASH", "Passwords", "uwsm app -- timmo-run-command 1password")
o.bind("SUPER + Y", "YouTube", [[omarchy-launch-webapp "https://www.youtube.com/feed/subscriptions"]])
o.bind("SUPER + X", "X", [[omarchy-launch-webapp "https://twitter.com/"]])
o.bind("SUPER + SHIFT + X", "X Post", [[omarchy-launch-webapp "https://x.com/compose/post"]])
o.bind("SUPER + ALT + T", "Twitch", [[omarchy-launch-webapp "https://twitch.tv/directory/following/live"]])
o.bind("SUPER + SHIFT + T", "T3 Chat", [[omarchy-launch-webapp "https://t3.chat"]])
o.bind("SUPER + ALT + G", "GitHub", [[omarchy-launch-webapp "https://github.com"]])
o.bind("SUPER + D", "Discord", discord)

-- Home Assistant
o.bind("SUPER + H", "Home Assistant", [[omarchy-launch-webapp "http://homeassistant.local:8123"]])
o.bind("SUPER + ALT + H", "Home Assistant DEV", [[omarchy-launch-webapp "http://localhost:8124"]])
o.bind("SUPER + SHIFT + H", "Home Assistant DEV", "omarchy-launch-tui timmo-run-command hadev")
o.bind("SUPER + A", "Home Assistant Assist", [[omarchy-launch-webapp "http://homeassistant.local:8123/?conversation=1"]])

-- Local automations
o.bind("SUPER + SHIFT + C", nil, "timmo-run-command go-automate ha ib t in_a_call")
o.bind("SUPER + ALT + C", "Doorbell Camera Popup", [[nohup setsid ~/.config/dotfiles/scripts/.local/bin/doorbell-popup --open-only --no-auto-close --camera-entity camera.front_door_snapshot --monitor eDP-1 --width 380 --height 450 >/tmp/doorbell-camera-popup.log 2>&1 < /dev/null &]])
o.bind("SUPER + SHIFT + M", nil, "pactl set-source-mute @DEFAULT_SOURCE@ toggle")
o.bind("CTRL + ALT + T", nil, "~/.local/bin/twitch-menu")
o.bind("CTRL + ALT + SHIFT + T", nil, "~/.config/dotfiles/scripts/.local/bin/twitch-notifications-recheck")
o.bind("CTRL + ALT + R", nil, "uwsm app -- xdg-terminal-exec --app-id=TUI.float -e dot tui git-diff")
o.bind("CTRL + ALT + SHIFT + R", nil, "uwsm app -- xdg-terminal-exec --app-id=TUI.float -e dot tui git-diff --tab other")

-- Precise window resizing (fractional, like 1% volume with ALT)
o.bind("SUPER + ALT + code:20", "Shrink window width (precise)", hl.dsp.window.resize({ x = -2, y = 0, relative = true }))
o.bind("SUPER + ALT + code:21", "Expand window width (precise)", hl.dsp.window.resize({ x = 2, y = 0, relative = true }))
o.bind("SUPER + ALT + SHIFT + code:20", "Shrink window height (precise)", hl.dsp.window.resize({ x = 0, y = -2, relative = true }))
o.bind("SUPER + ALT + SHIFT + code:21", "Expand window height (precise)", hl.dsp.window.resize({ x = 0, y = 2, relative = true }))

-- Gamma-only dimming toggle
o.bind("SUPER + CTRL + D", "Toggle dimming", "~/.config/hypr/bin/hyprsunset-toggle-dim")
o.bind("SUPER + CTRL + code:20", "Dim down", "~/.config/hypr/bin/hyprsunset-dim-step down")
o.bind("SUPER + CTRL + code:21", "Dim up", "~/.config/hypr/bin/hyprsunset-dim-step up")
o.bind("CTRL + XF86MonBrightnessUp", "Dim up", "~/.config/hypr/bin/hyprsunset-dim-step up", { locked = true, repeating = true })
o.bind("CTRL + XF86MonBrightnessDown", "Dim down", "~/.config/hypr/bin/hyprsunset-dim-step down", { locked = true, repeating = true })

-- Normal brightness disables dim
hl.unbind("XF86MonBrightnessUp")
hl.unbind("XF86MonBrightnessDown")
o.bind("XF86MonBrightnessUp", "Brightness up", "~/.config/hypr/bin/hyprsunset-clear-dim && omarchy-brightness-display +5%", { locked = true, repeating = true })
o.bind("XF86MonBrightnessDown", "Brightness down", "~/.config/hypr/bin/hyprsunset-clear-dim && omarchy-brightness-display 5%-", { locked = true, repeating = true })
