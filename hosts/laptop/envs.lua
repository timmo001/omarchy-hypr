-- Mirrored from envs.conf for Omarchy 4.0 Lua config prep.
-- This file is intentionally dormant on Omarchy 3.x; envs.conf remains active.

hl.env("OMARCHY_HOST", "laptop")

-- Nvidia + Wayland
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("ELECTRON_ENABLE_WAYLAND", "1")

-- Cursor
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")
-- hl.env("XCURSOR_SIZE", "32")
-- hl.env("HYPRCURSOR_SIZE", "32")
