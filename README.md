# DOTFILES
This is my personal collection of dotfiles. The repository contains the following files:

## Configuration Files
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

- **Wofi**
    - Destination: `$HOME/.config/wofi`

- **alacritty.yml**:
    - Destination: `$HOME/.config/alacritty/alacritty.yml`
    - Comments: Tested on Linux only.

- **Vim / Neovim**
    - Destination:
        - Vim:
            - Windows: \_vimrc and \_gvimrc
            - Linux / UNIX: .vimrc and .gvimrc
        - Neovim:
            - Windows: `%userprofile%\Local\nvim\`
            - Linux: `$HOME/.config/nvim/`

- **Vim / Neovim Colors**
    - Destination:
        - Vim:
            - Windows: `%userprofile%\vimfiles\colors`
            - Linux / UNIX: `$HOME/.vim/colors`
        - Neovim
            - Windows: `%userprofile%\Local\nvim-data\colors`
            - Linux: `$HOME/.config/nvim/colors`

- **Xresources**
    - Destination: `$HOME/.Xresources`
    - Comments: Configures URxvt. After making changes / running for the first
      time, run `xrdb .Xresources`.

- **zshrc**
    - Destination: `$HOME/.zshrc`
    - Comments: Tested on macOS. Does not work as of now on Linux.

- **smb.conf**
    - Destination: `/etc/samba/`
    - Comments: Samba configuration file, tested with Fedora 36+ for maximum
      compatibility.

- **ncspot.toml**
    - Destination: `$HOME/.config/ncspot/config.toml`
    - Dependencies: KeepassXC
    - Comments: Spotify CLI config file. credentials.
      Only works with Spotify Premium.

- **mpv.conf**
    - Destination: `$HOME/.config/mpv/mpv.conf`
    - Comments: Adds configuration for MPV Media Player.

