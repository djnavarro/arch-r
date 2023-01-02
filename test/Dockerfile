FROM archlinux:base-devel

# Labels provide metadata for the image
LABEL org.opencontainers.image.source "https://github.com/djnavarro/arch-r" 
LABEL org.opencontainers.image.authors "Danielle Navarro <djnavarro@protonmail.com>" 
LABEL org.opencontainers.image.description DESCRIPTION
LABEL org.opencontainers.image.licenses "GPL-3.0"

# Set the locale
COPY test/locale.gen /etc/locale.gen
COPY test/locale.conf /etc/locale.conf
RUN locale-gen
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Install R
RUN pacman -Syu --noconfirm r

# Install system dependencies used in testing R packages
RUN pacman -Sy --noconfirm git pandoc texlive-most texlive-fontsextra

# Install R packages used in testing R packages
RUN Rscript -e "install.packages(c('remotes', 'knitr', 'rmarkdown', 'testthat', 'rcmdcheck', 'covr', 'gert'), repos = 'https://cloud.r-project.org')"

# Default command: just start R
CMD R --no-save
