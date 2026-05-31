-- Mirrored from looknfeel.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; looknfeel.conf remains active.

hl.config({
  general = {
    gaps_in = 0,
    col = {
      active_border = "rgba(ccccccaa)",
    },
  },
})

-- Smaller floating terminal for SUPER+SHIFT+Q launcher
hl.window_rule({ name = "floating-terminal-size", match = { class = "^org\\.omarchy\\.terminal$" }, size = "760 500" })
