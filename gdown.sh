# helper scription to do the docker run
#
# First parameter is the google drive ID for the file you want to download
# Second parameter is the destination drive for the file
# Third parameter is the file name

docker run --volume $2:/tmp/down -it wlaforest/gdown gdown $1 -O /tmp/down/$3
