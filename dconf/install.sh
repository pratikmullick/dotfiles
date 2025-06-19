#!/bin/bash

for file in *.dconf; do
    echo "Loading: $file"
    dconf load / < $file;
done
