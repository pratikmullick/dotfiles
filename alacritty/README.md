# Alacritty Terminal Emulator Settings
The Alacritty terminal emulator has gone through some serious changes, most
importantly the shift to TOML format (similar to Windows INI files) from the
previous YAML format (similar to Python's document structure, with indented
separation).

## Contents
This directory contains four files:
- **legacy.yaml**: Legacy YAML Configuration Format.
- **legacy_colour.yaml**: Legacy Color Format. For reference only.
- **alacritty.toml**: Current TOML Configuration Format. For more settings,
  refer to `man 5 alacritty`.
- **example_color.toml**: Current Colour Format. For reference only.

## Installation
The configuration directory for different operating systems are as follows:

- **UNIX/Linux**: `$XDG_CONFIG_HOME/alacritty/`
- **Windows**   : `C:\Users\<USERNAME>\AppData\Roaming\Alacritty`

