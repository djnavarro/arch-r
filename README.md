
# arch-r

This repository provides a latest-version docker image running R on the current release of Arch Linux, and maintained by Danielle Navarro. It is built on the [archlinux:base-devel](https://hub.docker.com/_/archlinux) image, with the [r](https://archlinux.org/packages/community/x86_64/r/) package installed and locale information specified. 

To install the base or test image: 

```
docker pull ghcr.io/djnavarro/arch-r:base 
docker pull ghcr.io/djnavarro/arch-r:test 
```

To use one of these images in your own Dockerfile:

```
FROM ghcr.io/djnavarro/arch-r:base
FROM ghcr.io/djnavarro/arch-r:test
```
