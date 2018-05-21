FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

COPY environment.yml environment.yml

RUN conda env update -n root -f environment.yml

RUN conda info --envs

RUN rm environment.yml

