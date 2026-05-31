-- Mirrored from looknfeel.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; looknfeel.conf remains active.

hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 0,
    border_size = 1,
    col = {
      active_border = "rgba(ccccffff)",
      inactive_border = "rgba(595959aa)",
    },
    resize_on_border = true,
    allow_tearing = false,
    layout = "dwindle",
  },

  decoration = {
    rounding = 4,
    shadow = {
      enabled = true,
      range = 2,
      render_power = 3,
      color = "rgba(1a1a1aee)",
    },
    blur = {
      enabled = true,
      size = 3,
      passes = 1,
      vibrancy = 0.1696,
    },
  },
})

-- Smart gaps
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ name = "smart-gaps-wtv1", match = { float = false, workspace = "w[tv1]" }, border_size = 0, rounding = 0 })
hl.window_rule({ name = "smart-gaps-f1", match = { float = false, workspace = "f[1]" }, border_size = 0, rounding = 0 })

-- Chrome opacity override.
hl.window_rule({ name = "tag-chromium-based-browser", match = { class = "(google-)?[cC]hrom(e|ium)(-stable|-unstable)?|[bB]rave-browser|Microsoft-edge|Vivaldi-stable" }, tag = "+chromium-based-browser" })
hl.window_rule({ name = "opaque-chromium-based-browser", match = { tag = "chromium-based-browser" }, opacity = "1 1" })

-- Video websites and Home Assistant should be opaque.
hl.window_rule({ name = "opaque-twitch", match = { initial_title = ".*twitch\\.tv.*" }, opacity = "1 1" })
hl.window_rule({ name = "opaque-youtube", match = { initial_title = ".*youtube\\.com.*" }, opacity = "1 1" })
hl.window_rule({ name = "opaque-corridor", match = { initial_title = ".*corridordigital\\.com.*" }, opacity = "1 1" })
hl.window_rule({ name = "opaque-floatplane", match = { initial_title = ".*floatplane\\.com.*" }, opacity = "1 1" })
hl.window_rule({ name = "opaque-vivaplus", match = { initial_title = ".*vivaplus\\.tv.*" }, opacity = "1 1" })
hl.window_rule({ name = "opaque-home-assistant", match = { title = ".*Home Assistant.*" }, opacity = "1 1" })

-- Steam: keep the main client tiled while login/dialog windows can stay floating.
hl.window_rule({ name = "tile-steam-main", match = { class = "^(steam)$", title = "^Steam$" }, float = false })

-- Workspace rules.
hl.window_rule({ name = "workspace-chromium", match = { class = "^(chromium)$" }, workspace = "1" })
hl.window_rule({ name = "workspace-discord", match = { class = "^(chrome-discord\\.com__app)" }, workspace = "1 silent" })
hl.window_rule({ name = "workspace-slack", match = { class = "^(chrome-app\\.slack\\.com__client)" }, workspace = "1 silent" })
hl.window_rule({ name = "workspace-work-browser", match = { class = "^(work-browser)$" }, workspace = "3" })
hl.window_rule({ name = "workspace-slicers", match = { class = "^(BambuStudio|OrcaSlicer)$" }, workspace = "4" })
