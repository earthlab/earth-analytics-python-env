FROM continuumio/miniconda3

RUN useradd -ms /bin/bash jovyan
USER jovyan

RUN conda update conda 
RUN conda config --remove channels conda-forge
RUN conda config --add channels conda-forge
RUN conda config --set channel_priority strict

COPY environment.yml /home/jovyan/ 
RUN mamba env create -f /home/jovyan/environment.yml
# using ~/.bash_profile instead of ~/.bashrc for non-interactive tty (-it) containers
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> /home/jovyan/.bash_profile && \
    echo "conda deactivate" >> /home/jovyan/.bash_profile && \
    echo "conda activate earth-analytics-python" >> /home/jovyan/.bash_profile
RUN . /opt/conda/etc/profile.d/conda.sh && conda activate earth-analytics-python && python -m ipykernel install --user --name earth-analytics-python     
RUN source /home/jovyan/.bash_profile

# Install JupyterLab widget extensions
RUN jupyter labextension install \
    ipyvolume \
    itkwidgets \    
    jupyterlab_iframe \ 
    jupyter-leaflet \
    jupyter-threejs \
 && npm cache clean --force

RUN jupyter lab build
