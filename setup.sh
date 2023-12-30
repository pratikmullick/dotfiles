#!/bin/bash

# TODO: Create bash_cred by asking for DB filename and PWD
cred_file="$HOME/.bash_cred"
read -p "Full path to Password Database: " PWD_DB
read -p "Full path to Password Key File: " PWD_KEY
read -p "Secret for Database: " KPWD

cat <<EOF >$cred_file
export PWD_DB=$PWD_DB
export PWD_KEY=$PWD_KEY
export KPWD=$KPWD
EOF


bash_dir="./bash"

# Copying bash files
echo "Copying bash files"
for file in $bash_dir/*; do
    echo "$file -> $(basename $HOME/$file)";
    cp $file $HOME/.$(basename $file);
done

