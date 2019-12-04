#/bin/bash

if [[ $1 == "imagemagick" ]];then
    docker build \
     -t gabs2/imagemagick:7 -t gabs2/imagemagick:latest \
     --file imagemagick.Dockerfile .
    exit 0
fi

if [[ $1 == "bash" ]];then
    docker build \
     -t gabs2/alpinebash:latest \
     --file bash.Dockerfile .
    exit 0
fi

if [[ $1 == "fileconv" ]];then
    docker build \
     -t gabs2/fileconv:latest \
     --file fileconv.Dockerfile .
    exit 0
fi