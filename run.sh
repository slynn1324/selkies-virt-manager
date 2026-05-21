#!/bin/bash

podman run -d \
  --name virt-manager \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ=$(cat /etc/timezone) \
  -e TITLE=virt-manager \
  -p 3001:3001 \
  -v /run/libvirt/libvirt-sock:/run/libvirt/libvirt-sock \
  localhost/slynn1324/virt-manager:latest

