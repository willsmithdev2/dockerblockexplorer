#!/bin/bash
#This env variable is needed to know the IP address of the boot2docker IP. May requre tinkering. 
export DOCKER_IP="$(ifconfig | grep -A 1 'eth1' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"

docker rm nginx
docker rm consul
docker rm registrator
docker rm app1
docker rm app2

docker-compose up -d



