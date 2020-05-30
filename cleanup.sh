#!/bin/bash

#check if container exist with given name, delete it
name=$1

container_id=`docker ps -aqf name=$name`
echo $container_id
if [ -n $container_id ] ; then
	docker rm $name -f
fi