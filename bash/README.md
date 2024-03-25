# Bash Configuration Files
These files are used to configure the Bash shell.

## Installation
Copy these files as hidden files to the `$HOME` directory. Use the setup.sh
script for an interactive setup process. Otherwise, use the following command:
```
$ for file in bash*; do cp $file $HOME/.$file; done
```

## Status
Tested on Linux (Arch, Debian, Fedora, WSL). Not tested on macOS and BSDs
