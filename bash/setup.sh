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
bash_dir="."
echo "Copying bash files"
for file in $bash_dir/bash*; do
    echo "$file -> $(basename $HOME/$file)"
    cp $file "$HOME/.$(basename $file)"
done

# Create systemd environment variables from bashenv
input_env_file="bashenv"
output_env_dir="$HOME/.config/environment.d"
output_env_file="bashenv.conf"
output_env_path="${output_env_dir}/${output_env_file}"
regex="export"
mkdir -p "$output_env_dir"

while read -r line; do
    parsed_line=$(awk '
        NR == 1 && substr($0, 1, 1) == "#" { next }
        {
            gsub("'${regex}'", "");
            if (substr($0, 1, 1) == " ") {
                $0 = substr($0, 2);
        }
        print
    }' <<< "$line")
    echo "$parsed_line" >> "$output_env_path"
done < "$input_env_file"
echo "Bash environment variables copied to ${output_env_path}."

# Clean exit
exit 0

