# -*- mode: ruby -*-
# vi: set ft=ruby :

FROM aquabiota/jupyterlab-docker:0.24.1

LABEL maintainer "Aquabiota Solutions AB <mapcloud@aquabiota.se>"

# install R Essentials in Jupyter
RUN conda install -y -c r r-essentials


# HEALTHCHECK CMD curl --fail http://localhost:2480/ || exit 1
