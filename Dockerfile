# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
# Docker-stacks License: https://github.com/jupyter/docker-stacks/blob/master/LICENSE.md
FROM jupyter/minimal-notebook
MAINTAINER Jack Camier <jcamier@gmail.com>

# Local user created by base notebook project
ARG NB_USER="jovyan"
ENV HOME=/home/$NB_USER

 # Do not use this user if you plan on using this in production by any means
USER root


# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
WORKDIR $HOME

RUN conda install --quiet --yes \
    'pandas==0.23.4' \
    'matplotlib=2.2*' \
    'seaborn=0.9*'


EXPOSE 8888



