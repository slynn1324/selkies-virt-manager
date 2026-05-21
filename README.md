# virt-manager in a browser

virt-manager via the [linuxserver.io](https://linuxserver.io) Selkies base image.

## security
By default, this setup has **NO** security.  **DO NOT** expose this to the internet,
or leave it running unattended.  Stop the container when you're not using it. Or... 
apply real security through various means.

## building

```bash
./build.sh
```

## running
```
./run.sh
```

Modifu the scripts as desired.

## customizing

- mount ssh identity files/config in /config/.ssh to enable key based auth to remote libvirt hosts


