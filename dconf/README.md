# DConf Settings
The following files contain directives to load ideal DConf settings for the
GNOME desktop. To use these settings, they need to be loaded on to the DConf
database. For easier identification, these files have a `.dconf` extension.

- **`app_folders`**: This file contains an *ideal* app folder configuration for
  the GNOME desktop. For best use-case, copy this file separately and remove
  the `favorite-apps` section when installing on a new GNOME session. Due to
  how each distribution decides to name their `.desktop` files, each app folder
  will contain multiple references to the same application.
- **`gnome_text_editor`**: Preferred settings for GNOME Text Editor.
- **`world_clocks`**: Local time configuration of preferred locations when
  GNOME Clocks is installed.

## Installation
Each of these files need to be loaded to the DConf database. For ease of setup,
a simple bash script named `install.sh` is provided.

## Status
Tested on Arch Linux and Fedora Workstation.
