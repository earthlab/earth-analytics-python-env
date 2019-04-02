#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
else
  wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
fi

bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
echo "conda activate base" >> ~/.bashrc
source $HOME/miniconda/bin/activate
conda config --set always_yes yes --set show_channel_urls true --set changeps1 no
conda update -q conda
conda config --add channels conda-forge
conda info -a
conda init bash
conda env create -f environment.yml
