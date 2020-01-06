Dockerized Wetty
================

This is a dockerized version of Wetty krishnasrinivas (https://github.com/krishnasrinivas/wetty), 
with additional ideas from Robert Szymczak (https://github.com/m451/docker-wetty). Both docker images available in these
repositories are node base, with sized up to 1G. This one is based on alpine-node, which gives 
a docker image of around 100G with all npm modules.

Base is changed back to /wetty and docker-compose port moved to 3100.