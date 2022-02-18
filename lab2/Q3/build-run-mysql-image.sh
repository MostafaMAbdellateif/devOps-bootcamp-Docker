#!/bin/bash

# to build the image
docker_image_name="mysql-image-test-2"
docker build . -t $docker_image_name

# to create volume
volume_name="mysql_data"
docker volume create $volume_name

#to run the image on a container and mount it to the volume
container_name="my_mysql_container_1"
mysql_pass="P4sSw0rd0!"
docker run -d --name $container_name -e MYSQL_ROOT_PASSWORD=$mysql_pass --mount source=$volume_name,target=/var/lib/mysql $docker_image_name