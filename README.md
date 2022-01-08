# DOTFILES
This is my personal collection of dotfiles. The repository contains the following files:

- **alacritty.yml**:
    - Destination: $HOME/.alacritty.yml
    - Dependencies: Hack TTF Font
    - Comments: Tested on Linux only.

- **bash files (All files with Bash prefix)**:
    - Destination: $HOME
    - Script: `$ for FILE in bash*; do cp $FILE $HOME/.$FILE; done`
    - Comments: Tested on Linux (Arch, Debian, Fedora). Not tested on macOS
    and BSDs.

- **envvars.conf**
    - Destination: $HOME/.config/environment.d/envvars.conf
    - Comments: The destination might not exist. Please create it with `mkdir`

- **gitignore_python**
    - Destination: Copied to any directory with Python3 virtual environment as
    .gitignore. Also works for Node JS projects.

- **memacs (Deprecated)**
    - Destination: $HOME/.memacs
    - Comments: Used for MightEMacs

- **sway**
    - Destination: $HOME/.sway
    - Dependencies: swaymsg, swayidle, swaylock, acpi
    - Comments: Tested on Linux only.

- **vimcolors**
    - Destination (UNIX): $HOME/.vim/colors
    - Destination (Windows): TODO
    - Comments: The files in this directory need to be copied *inside* the
    colors directory mentioned above

- **vimrc**
    - Destination (UNIX): $HOME/.vimrc
    - Destination (Windows): $HOME/_gvimrc
    - Comments: Contains all settings for Vim in one file. Not tested on
    Neovim

- **xres**
    - Destination: $HOME/.xres
    - Comments: Color schemes for URxvt. Needs Xresources to work.

- **Xresources**
    - Destination: $HOME/.Xresources
    - Dependencies: $HOME/.xres (mentioned above), Hack TTF Font
    - Comments: Configures URxvt

- **zshrc**
    - Destination: $HOME/.zshrc
    - Comments: Tested on macOS. Does not work as of now on Linux.
