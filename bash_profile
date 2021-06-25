#
# ~/.bash_profile
#
# Sets the default font to Terminus Size 32
# setfont /usr/share/kbd/consolefonts/ter-132n.psf.gz

# TTY sources bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# If .ttycolor is found, runs setvtrgb on it.
[[ -f ~/.ttycolor ]] && setvtrgb ~/.ttycolor
clear

