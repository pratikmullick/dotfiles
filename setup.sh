#!/bin/bash

# Create .bash_cred.
cred_file="$HOME/.bash_cred"
read -p "Create Bash Credentials File? (Y/N): " cred_yn
if [[ "$cred_yn" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    touch $cred_file
    read -p "Full path to Password Database: " pwd_db
    echo "export PWD_DB=$pwd_db" >> $cred_file
    read -p "Full path to Password Key File: " pwd_key
    echo "export PWD_KEY=$pwd_key" >> $cred_file
    read -p "Secret for Database: " secret
    echo "export KPWD=$secret" >> $cred_file
fi

# Copying bash files
bash_dir="./bash"
echo "Copying bash files"
for file in $bash_dir/*; do
    echo "$file -> $(basename $HOME/$file)";
    cp $file $HOME/.$(basename $file);
done

