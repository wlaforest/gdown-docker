#!/bin/bash

# helper script to do the docker run for gdown utility
#
# First parameter is the google drive ID for the file you want to download
# Second parameter is the destination drive for the file
# Third parameter is the file name

if [ "$#" -ne 3 ]; then
    echo "Script requires exactly 3 arguments"
    exit
fi

if [ -f "$2/$3" ]; then
    echo "File $2/$3 already exists. Halting before download"
    exit
fi

docker run --volume $2:/tmp/down -it wlaforest/gdown gdown $1 -O /tmp/down/$3
