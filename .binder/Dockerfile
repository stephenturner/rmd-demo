FROM rocker/binder:4.2.0
LABEL maintainer='stephenturner'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/stephenturner/rmd-demo/raw/main/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://cran.rstudio.com')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
