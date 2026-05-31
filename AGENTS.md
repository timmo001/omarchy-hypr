# HYPR AGENTS

Instructions for coding agents working in this repository.

## Host Override Layout

- This repo uses a single `main` branch with host-specific overrides.
- Shared entry files live at the repo root.
- Host overrides live under `hosts/desktop/` and `hosts/laptop/`.
- `dot stow` creates `~/.config/hypr/host` as a symlink to `hosts/$OMARCHY_HOST`.

## Documentation Sync

- If this host override arrangement changes, update this repo's `README.md` and `AGENTS.md` plus the related documentation and skill guidance in `~/.config/dotfiles` together.
- Keep host-specific instructions accurate for both laptop and desktop overrides.
