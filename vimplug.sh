#!/bin/bash

# Check Curl
cmd=$(which curl)
status=$?

# If Curl is present, download vimplug to appropriate directory
# Tested on Linux. Needs testing on macOS / BSD
[ $status -eq 0 ] && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    || "Install Curl on your system"

