# -*- mode: ruby -*-
# vi: set ft=ruby :

FROM aquabiota/jupyterlab-docker:0.24.1

LABEL maintainer "Aquabiota Solutions AB <mapcloud@aquabiota.se>"

# install R Essentials in Jupyter
RUN conda install -y -c r r-essentials
RUN conda install -y gdal=2.1.3 -c conda-forge  && \
    conda install -y --channel https://conda.anaconda.org/awkwong r-rgdal && \
    conda install -y r-Hmisc r-car r-psych && \
    conda install -y r-mgcv r-randomForest r-ROCR r-raster

# HEALTHCHECK CMD curl --fail http://localhost:2480/ || exit 1
