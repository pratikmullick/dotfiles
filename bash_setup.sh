#!/bin/sh

# TODO: Create bash_cred by asking for DB filename and PWD

# Copying bashrc
echo "Copying bash files"
for file in bash*; do
	cp -v $file ~/.$file;
done

# Copying vim and nvim files
echo "Making nvim directory"
mkdir -p ~/.config/nvim
echo "Copying vim files"
for file in *vimrc; do
    copy $file ~/.$file;
done
echo "Copying nvim files"
for file in *init.vim; do
	cp $file ~/.config/nvim/$file;
done

