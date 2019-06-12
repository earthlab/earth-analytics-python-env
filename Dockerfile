FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

RUN conda config --add channels conda-forge

RUN conda config --set channel_priority strict

COPY environment.yml environment.yml

RUN conda env update -n root -f environment.yml

RUN conda info --envs

RUN conda list

RUN python -c "import rasterio"
RUN python -c "import earthpy"

RUN rm environment.yml
