#!/bin/bash
docker build -t lambda-ghostscript .

id=$(docker create lambda-ghostscript)
docker cp $id:/usr/local/bin/gs bin/gs
docker cp $id:/usr/local/bin/magick bin/magick
docker rm -v $id
