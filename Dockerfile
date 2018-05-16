FROM jupyter/scipy-notebook

MAINTAINER Max Joseph <maxwell.b.joseph@colorado.edu>

COPY environment.yml environment.yml

RUN conda env create -f environment.yml

RUN rm environment.yml

# to have environments show up as kernels
RUN conda install --channel=conda-forge nb_conda_kernels

