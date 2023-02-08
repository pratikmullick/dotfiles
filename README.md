# DOTFILES
This is my personal collection of dotfiles. The repository contains the following files:

## Configuration Files

- **alacritty.yml**:
    - Destination: `$HOME/.config/alacritty/alacritty.yml`
    - Comments: Tested on Linux only.

- **bash files (All files starting with bash)**:
    - Destination: `$HOME`
    - Script: `$ for FILE in bash*; do cp $FILE $HOME/.$FILE; done`
    - Comments: Tested on Linux (Arch, Debian, Fedora). Not tested on macOS
    and BSDs.

- **envvars.conf**
    - Destination: `$HOME/.config/environment.d/envvars.conf`
    - Comments: The destination might not exist. Please create it with `mkdir`.

- **gitignore_python**
    - Destination: Copied to any directory with Python3 virtual environment as
    .gitignore. Also works for Node JS projects.

- **memacs (Deprecated)**
    - Destination: `$HOME/.memacs`
    - Comments: Used for MightEMacs

- **sway**
    - Destination: `$HOME/.config/sway`
    - Dependencies:
        - `swayidle`
        - `swaylock`
        - `clipman`
        - `wl-paste`
        - `alacritty`
        - `firefox`
        - `wofi`
        - `pactl`
        - `light`
        - `acpi`
    - Comments: Tested on Linux only.

- **vimcolors**
    - Destination (UNIX): `$HOME/.vim/colors`
    - Destination (Windows): `%userprofile%\vimfiles\colors`
    - Comments: The files in this directory need to be copied *inside* the
    colors directory mentioned above

- **vimrc**
    - Destination (UNIX): `$HOME/.vimrc`
    - Destination (Windows): `%userprofile%\_gvimrc`
    - Comments: Contains all settings for Vim in one file. Doesn't work on
      Neovim.

- **Xresources**
    - Destination: `$HOME/.Xresources`
    - Comments: Configures URxvt. After making changes / running for the first
      time, run `xrdb .Xresources`.

- **zshrc**
    - Destination: `$HOME/.zshrc`
    - Comments: Tested on macOS. Does not work as of now on Linux.

- **app_icons**
    - Destination: `$HOME/.local/share/applications`
    - Comments: Contains custom application icons for Linux desktop with
      Wayland support. Tested on Fedora 36+. Preferably use with a full-fledged
      DE, not a WM.

- **smb.conf**
    - Destination: `/etc/samba/`
    - Comments: Samba configuration file, tested with Fedora 36+ for maximum
      compatibility.

