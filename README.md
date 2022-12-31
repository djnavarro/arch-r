
# arch-r

This repository provides a latest-version docker image running R on the current release of Arch Linux, and maintained by Danielle Navarro. It is built on the [archlinux:base-devel](https://hub.docker.com/_/archlinux) image, with the [r](https://archlinux.org/packages/community/x86_64/r/) package installed and locale information specified. 

To install the image: 

```
docker pull ghcr.io/djnavarro/arch-r:main 
```

To use this image in your own Dockerfile:

```
FROM ghcr.io/djnavarro/arch-r:main
```
