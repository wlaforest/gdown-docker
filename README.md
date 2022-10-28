# gdown-docker
[gdown](https://github.com/wkentaro/gdown) is a python module which enables you to download files from google drive based on ID or URL. One use for this is to enable the programtic downloading of a large binary that is hosted in google drive. 

Although gdown this is relatively simple to install it does required you to have python isntalled as well as pip installing the module.  This repo creates a docker image so that you can invoke gdown as long as you just have docker installed.  You can look at the [documentation](https://github.com/wkentaro/gdown) for gdown but to invoke it with this container it will look something ike this

    docker  run --volume /tmp:/tmp/down -it wlaforest/gdown gdown 1Mo2cjWx8QFU3oekRLdaeWZztWa0VwFXX -O /tmp/down/foo.zip

With this command i have bound my local /tmp direcotry to the /tmp/down path on container I'm creating with docker run.  In this example I'm passing the ID of the object I want to download and then using the -O command to specify the file name in the mounted diretory.  As this example command suggests I have uploaded the image for this to docker hub so you can use it without building the docker image.  I also have a brain dead shell script `gdown.sh` which takes three parameters, first must be the object id, the second is the destination folder, and the third is the name you want the object to be saved as.  So the above command would look like

    ./gdown.sh 1Mo2cjWx8QFU30ekRLdaeWZztWa0VwF3XX /tmp foo.pcap
