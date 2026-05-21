#!/bin/bash

# I use podman instead of docker. with podman rootless, UID/GID=0 will end up being
# the host user id.  I don't recommend running as root on a docker setup.
# if you setup ssh keys instead of mapping the socket then you don't need uid=0 eiher.
podman run -d \
  --name virt-manager \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ=$(cat /etc/timezone) \
  -e TITLE=virt-manager \
  -p 3001:3001 \
  -v /run/libvirt/libvirt-sock:/run/libvirt/libvirt-sock \
  localhost/slynn1324/virt-manager:latest

