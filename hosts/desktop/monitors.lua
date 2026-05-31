-- Mirrored from monitors.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; monitors.conf remains active.

hl.env("GDK_SCALE", "1.75")
hl.env("QT_SCALE_FACTOR", "1.75")

hl.monitor({ output = "DP-1", mode = "3840x2160@143.86", position = "-1296x0", scale = 1.666667, transform = 1 })
hl.monitor({ output = "HDMI-A-2", mode = "3840x2160@240.00", position = "0x504", scale = 1.666667 })

hl.workspace_rule({ workspace = "1", name = "Main Left", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", name = "Main Right A", monitor = "HDMI-A-2", default = true })
hl.workspace_rule({ workspace = "3", name = "Main Right B", monitor = "HDMI-A-2", default = false })
hl.workspace_rule({ workspace = "4", name = "Main Right C", monitor = "HDMI-A-2", default = false })
hl.workspace_rule({ workspace = "5", name = "Main Right D", monitor = "HDMI-A-2", default = false })
hl.workspace_rule({ workspace = "6", name = "Main Right E", monitor = "HDMI-A-2", default = false })
