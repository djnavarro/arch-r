FROM archlinux:base-devel

LABEL org.opencontainers.image.source "https://github.com/djnavarro/arch-r/base" 
LABEL org.opencontainers.image.authors "Danielle Navarro <djnavarro@protonmail.com>" 
LABEL org.opencontainers.image.description DESCRIPTION
LABEL org.opencontainers.image.licenses "GPL-3.0"

# set the locale
COPY base/locale.gen /etc/locale.gen
COPY base/locale.conf /etc/locale.conf
RUN locale-gen
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# install R and set default command
RUN pacman -Syu --noconfirm r
CMD R --no-save
