#!/bin/bash

# to build the image
docker_image_name="node-image-test-1"
docker build . -t $docker_image_name

#to run the image on a container
container_name="my_node_container"
container_port=3000
host_port=49160
docker run --name $container_name -p $host_port:$container_port -d $docker_image_name 