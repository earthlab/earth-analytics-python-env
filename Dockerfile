FROM jupyter/minimal-notebook:python-3.11

# Installing package for libmamba
USER root
RUN apt-get update && \
    apt-get install -y \
    libfmt-dev \ 
    libtiff5

USER jovyan

# Set up conda
RUN conda update conda 
RUN conda config --remove channels conda-forge
RUN conda config --add channels conda-forge
#RUN conda config --set channel_priority strict
#RUN conda config --set solver classic

# Create environment
COPY environment.yml /home/jovyan/ 
RUN conda install -n base -c conda-forge mamba
RUN mamba env update -n base -f /home/jovyan/environment.yml

# Activating environment
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> /home/jovyan/.bash_profile && \
    echo "conda deactivate" >> /home/jovyan/.bash_profile && \
    echo "conda activate base" >> /home/jovyan/.bash_profile
RUN . /opt/conda/etc/profile.d/conda.sh && conda activate base && python -m ipykernel install --user --name base
# using ~/.bash_profile instead of ~/.bashrc for non-interactive tty (-it) containers
RUN source /home/jovyan/.bash_profile

# Install dev version of Earthpy
RUN pip install git+https://github.com/earthlab/earthpy@main
