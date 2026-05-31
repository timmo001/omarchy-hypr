-- Omarchy 4.0 Lua shadow entrypoint.
-- This file is intentionally dormant on Omarchy 3.x; hyprland.conf remains active.

package.path = os.getenv("HOME")
  .. "/.config/?.lua;"
  .. (os.getenv("OMARCHY_PATH") or (os.getenv("HOME") .. "/.local/share/omarchy"))
  .. "/?.lua;"
  .. package.path

-- Omarchy defaults and current theme overrides.
require("default.hypr.omarchy")

-- Local overrides mirrored from the current *.conf files.
require("hypr.monitors")
require("hypr.looknfeel")
require("hypr.input")
require("hypr.bindings")
require("hypr.envs")
require("hypr.autostart")

-- Dynamic Omarchy toggles.
require("default.hypr.toggles")
