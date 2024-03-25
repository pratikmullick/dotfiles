# DOTFILES
This is my personal collection of dotfiles. The repository contains the
following files:

## Configuration Files

- **alacritty**:
    - Refer to [alacritty/README.md](alacritty/README.md)
- **bash**:
    - Refer to [bash/README.md](bash/README.md)
- **sway**
    - Refer to [sway/README.md](sway/README.md)
- **Vim / Neovim**
    - Refer to [vim/README.md](vim/README.md)
- **gitignore_python_node**
    - Destination: Copied to any directory with Python3 virtual environment as
    .gitignore. Also works for Node JS projects.
- **memacs (Deprecated)**
    - Destination: `$HOME/.memacs`
    - Comments: Used for MightEMacs
- **Wofi**
    - Destination: `$HOME/.config/wofi`
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

