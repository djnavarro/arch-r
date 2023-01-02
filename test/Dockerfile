FROM ghcr.io/djnavarro/arch-r:base

# install handy system and R packages for testing
RUN pacman -Sy --noconfirm git pandoc texlive-most texlive-fontsextra
ENV pkgs="c('knitr', 'rmarkdown', 'testthat', 'rcmdcheck', 'covr', 'gert')"
ENV cran="https://cloud.r-project.org"
RUN Rscript -e "install.packages('remotes', repos='$cran')"
RUN Rscript -e "remotes::install_cran($pkgs, '$cran')"

# Default command: just start R
CMD R --no-save
