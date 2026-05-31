-- Mirrored from input.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; input.conf remains active.

hl.config({
  input = {
    kb_layout = "gb",
    kb_options = "compose:caps",
    repeat_rate = 40,
    repeat_delay = 600,
    sensitivity = 0,
    accel_profile = "flat",
  },
})

require("hypr.host.input")
