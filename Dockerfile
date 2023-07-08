FROM archlinux:latest

RUN pacman -Syu --noconfirm base-devel r gcc-fortran texlive-core texlive-latex && pacman -Scc --noconfirm

COPY add_inconsolata.sh add_inconsolata.sh
RUN bash add_inconsolata.sh

RUN R -e "install.packages(c('tinytest'),repos='https://cloud.r-project.org')"

