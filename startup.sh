#!/bin/bash
#This env variable is needed to know the IP address of the boot2docker IP. May requre tinkering. 
export DOCKER_IP="$(ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"

docker rm -f nginx
docker rm -f consul
docker rm -f registrator
docker rm -f app1
docker rm -f app2

docker-compose up -d



