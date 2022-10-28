#!/bin/bash

# helper script for executing gdown within the container (will check for file first)
#
# First parameter is the google drive ID for the file you want to download
# Second parameter is the file name

if [ "$#" -ne 2 ]; then
    echo "Script requires exactly 2 arguments"
    exit
fi

if [ -f "/tmp/down/$2" ]; then
    echo "File $2 already exists. Halting before download"
    exit
fi

gdown $1 -O /tmp/down/$2
