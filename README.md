
# arch-r

https://github.com/djnavarro/arch-r

This repository provides two latest-version docker images running R on the current release of Arch Linux, and maintained by Danielle Navarro. The relevant dockerfiles and any files they copy to the image are in the `base` and `test` folders of this repository.

For both images, "base" and "test":

- Use [archlinux:base-devel](https://hub.docker.com/_/archlinux) as the image
- Install R (using the [r](https://archlinux.org/packages/community/x86_64/r/) package) 
- Use `en_US.UTF-8` to set the system locale

In addition, the "test" image:

- Installs the git, pandoc, texlive-most, and texlive-fontsextra system dependencies
- Installs the remotes, knitr, rmarkdown, testthat, rcmdcheck, covr, and gert R packages

The images are hosted on the github container registry, as packages linked to the arch-r github repository:

- https://github.com/djnavarro/arch-r/pkgs/container/arch-r-base
- https://github.com/djnavarro/arch-r/pkgs/container/arch-r-test

To install the base or test image: 

```
docker pull ghcr.io/djnavarro/arch-r-base:release
docker pull ghcr.io/djnavarro/arch-r-test:release 
```

To use one of these images in your own Dockerfile:

```
FROM ghcr.io/djnavarro/arch-r-base:release
FROM ghcr.io/djnavarro/arch-r-test:release
```

The images are released under GPL-3. I'm very happy for anyone to use them however they choose but please be aware that this is a personal side-project. If you are looking to run R reproducibly in a containerised environment I strongly recommend the [rocker project](https://rocker-project.org/) as a safer and superior option. 
