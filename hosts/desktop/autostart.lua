-- Mirrored from autostart.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; autostart.conf remains active.

o.exec_on_start("timmo-run-command system-bridge backend")
o.exec_on_start([[uwsm app -- chromium --new-window --ozone-platform=wayland --profile-directory="Default" --force-device-scale-factor=0.8]])
o.exec_on_start("twitch-notifications")
o.exec_on_start("solaar --window=hide")

-- Workspace layouts
o.exec_on_start("workspace-setup --sleep=5")
