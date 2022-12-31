# Base image is Arch linux with the base-devel group installed
FROM archlinux:base-devel

# Labels provide metadata for the image
LABEL org.opencontainers.image.source "https://github.com/djnavarro/arch-r-base" 
LABEL org.opencontainers.image.authors "Danielle Navarro <djnavarro@protonmail.com>" 
LABEL org.opencontainers.image.description DESCRIPTION
LABEL org.opencontainers.image.licenses "GPL-3.0"

# Set the locale
COPY locale.gen /etc/locale.gen
COPY locale.conf /etc/locale.conf
RUN locale-gen
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Install R: we need the noconfirm flag because there's a 
# dependendency cycle between harfbuzz and freecycle 
# (apparently harmless)
RUN pacman -Syu --noconfirm r

# Default command: just start R
CMD R --no-save
