FROM jupyter/minimal-notebook

MAINTAINER Leah Wasser <leah.wasser@colorado.edu>

COPY environment.yml environment.yml

RUN conda env update -n root -f environment.yml \
  && conda info --envs \
  && conda list \
  && rm environment.yml \
  && . activate base

# Test imports
RUN python -c "import rasterio"
RUN python -c "import earthpy"
