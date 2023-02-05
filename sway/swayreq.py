#!/usr/bin/env python3

import subprocess

# Required program list
prog_names = ["clipman","pactl","alacritty","wofi","wl-paste","firefox","light","acpi"]


# Empty values
missing = []
out_str = ""

# Populate missing list with programs that give error messages
for prog in prog_names:
    try:
        subprocess.run([prog,"--version"],stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    except:
        missing.append(prog)

# Create string for missing programs
for x in range(len(missing)):
    if x == len(missing) - 1:
        out_str += missing[x]
    else:
        out_str = missing[x] + ", "
out_str += " needs to be installed."

if __name__ == "__main__":
    if len(missing) > 0:
        subprocess.run(["swaynag","-m",out_str])
    else:
        print("All dependencies installed.")
