# Alacritty Terminal Emulator Settings
The Alacritty terminal emulator has gone through some serious changes, most
importantly the shift to TOML format (similar to Windows INI files) from the
previous YAML format (similar to Python's document structure, with indented
separation).

## Contents
This directory contains four files:
- **legacy.yaml**: Legacy YAML Configuration Format. For usage, rename it to
  `alacritty.toml`.
- **legacy_colour.yaml**: Legacy Color Format. For reference only.
- **alacritty.toml**: Current TOML Configuration Format. For more settings,
  refer to `man 5 alacritty`.
- **example_colour.toml**: Current Colour Format. For reference only.

## Installation
Copy the required file to `$HOME/.config/alacritty/`

