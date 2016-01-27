# dockerblockexplorer
Dockerized the blockexplorer app. Used nginx, Consul and Registrator to create a load balanced and auto service discovery system. 

I've created a dockerized version of my block explorer app so it can be executed anywhere, assuming you have Docker installed. 

Prerequisites:
- Installed docker
- Installed docker-compose

The startup script may require tinkering as Consul requires the Docker IP address, if running in Windows/Mac this is the IP address of 
boot2docker, otherwise this should just be localhost ip. 

Startup script will run: 
- Consul
- Registrator
- Nginx (used my own Docker image to include consul template, plus other config)
- 2 instances of the block explorer app

The 2 instances of the blockexplorer app sit behind nginx, nginx acts as a proxy. Consul template is used so if a new block explorer
instance is booted up it will automatically be added to nginx config and therefore will be load balanced also. 

Once up and running you should be able to nav to docker-ip:8080/app

