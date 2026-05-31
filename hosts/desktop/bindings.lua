-- Mirrored from bindings.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; bindings.conf remains active.

o.bind("SUPER + SHIFT + H", "Home Assistant DEV Terminal", "omarchy-launch-tui hadev")

-- Local automations
o.bind("SUPER + ALT + C", "Doorbell Camera Popup", [[nohup setsid ~/.config/dotfiles/scripts/.local/bin/doorbell-popup --open-only --no-auto-close --monitor DP-1 >/tmp/doorbell-camera-popup.log 2>&1 < /dev/null &]])
