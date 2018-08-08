FROM jupyter/scipy-notebook:177037d09156

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

COPY environment.yml environment.yml

RUN conda env update -n root -f "environment.yml" && \
    conda clean -tipsy && \
    rm environment.yml

RUN conda info --envs
