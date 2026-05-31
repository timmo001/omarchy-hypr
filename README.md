# Omarchy Hyprland Config

My Hyprland Config for [omarchy](https://omarchy.org).

This repo uses a single `main` branch with host-specific overrides.

- Shared entry files live at the repo root.
- Host overrides live under `hosts/desktop/` and `hosts/laptop/`.
- `dot stow` creates `~/.config/hypr/host` as a symlink to `hosts/$OMARCHY_HOST`.

If this host override arrangement changes, update this `README.md`, this repo's `AGENTS.md`, and the related documentation and skill guidance in `~/.config/dotfiles` together.

You can find my other dotfiles [here](https://github.com/timmo001/dotfiles/tree/distro/arch-omarchy).
