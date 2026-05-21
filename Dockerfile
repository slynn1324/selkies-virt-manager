# syntax=docker/dockerfile:1

# virt-manager in a browser via LinuxServer Selkies base image
# Access at https://yourhost:3001/

FROM ghcr.io/linuxserver/baseimage-selkies:alpine323

LABEL maintainer="slynn1324"

ENV TITLE=virt-manager \
    PIXELFLUX_WAYLAND=true 

RUN \
    echo "**** add icon ****" && \
    curl -o \
    /usr/share/selkies/www/icon.png \
    https://raw.githubusercontent.com/virt-manager/virt-manager/refs/heads/main/data/icons/48x48/apps/virt-manager.png && \
    echo "*** install virt-manager ***" && \
    apk add --no-cache virt-manager openssh-client

# s6-overlay service scripts and init
COPY /root /

EXPOSE 3001

VOLUME /config
