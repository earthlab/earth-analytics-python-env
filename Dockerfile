FROM jupyter/minimal-notebook

MAINTAINER Leah Wasser <leah.wasser@colorado.edu>

COPY environment.yml environment.yml

RUN conda env update -n root -f environment.yml

RUN conda info --envs

RUN conda list

RUN python -c "import rasterio"
RUN python -c "import earthpy"

RUN rm environment.yml
