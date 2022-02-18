#!/bin/bash

# to build the image
docker_image_name="httpd-image-test-1"
docker build . -t $docker_image_name

# to create volume
volume_name="my-data"
docker volume create $volume_name

#to run the image on a container and mount it to the volume
container_name="my_httpd_container_1"
container_port=9999
host_port=49170
docker run -d --name $container_name -p $host_port:$container_port --mount source=$volume_name,target=/code $docker_image_name 

#to create volume and mount it to /code folder inside the image