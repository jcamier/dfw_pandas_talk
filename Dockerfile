FROM jupyter/minimal-notebook
MAINTAINER Jack Camier <jcamier@gmail.com>
EXPOSE 8888

RUN conda install --quiet --yes \
    'pandas==0.23.4' \
    'matplotlib=2.2*' \
    'seaborn=0.9*'



