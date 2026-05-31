-- Mirrored from autostart.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; autostart.conf remains active.

o.exec_on_start("uwsm app -- hyprsunset --config ~/.config/hypr/host/hyprsunset.conf")
o.exec_on_start("timmo-run-command system-bridge backend")
o.exec_on_start([[uwsm app -- chromium --new-window --ozone-platform=wayland --profile-directory="Default" --force-device-scale-factor=0.8]])
o.exec_on_start("uwsm app -- kdeconnect-indicator")
o.exec_on_start("uwsm app -- twitch-notifications")
