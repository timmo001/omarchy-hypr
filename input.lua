-- Mirrored from input.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; input.conf remains active.

hl.config({
  input = {
    kb_layout = "gb",
    kb_options = "compose:caps",
    repeat_rate = 40,
    repeat_delay = 600,
    sensitivity = 0.35,
    accel_profile = "flat",
    touchpad = {
      disable_while_typing = true,
      natural_scroll = true,
      scroll_factor = 0.4,
    },
  },
})

-- Scroll speed adjustments
hl.window_rule({ name = "scroll-alacritty", match = { class = "Alacritty" }, scroll_touchpad = 1.50 })
hl.window_rule({ name = "scroll-ghostty", match = { class = "Ghostty" }, scroll_touchpad = 1.50 })
hl.window_rule({ name = "scroll-chromium", match = { class = "^(Chromium|chromium|google-chrome|google-chrome-stable|google-chrome-unstable)$" }, scroll_touchpad = 0.25 })
