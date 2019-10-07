# earth-analytics-environment

[![Build Status](https://travis-ci.com/earthlab/earth-analytics-python-env.svg?branch=master)](https://travis-ci.com/earthlab/earth-analytics-python-env)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/38a49nccgpl1metv?svg=true)](https://ci.appveyor.com/project/mbjoseph/earth-analytics-python-env)
[![DOI](https://zenodo.org/badge/132847711.svg)](https://zenodo.org/badge/latestdoi/132847711)
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/earthlab/earth-analytics-binder/master)
[![](https://images.microbadger.com/badges/image/earthlab/earth-analytics-python-env.svg)](https://microbadger.com/images/earthlab/earth-analytics-python-env "EA-Environment Docker Stats")
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/earthlab/earth-analytics-python-env?style=plastic)

Welcome to the Earth Analytics `Python` Environment Repository! Here you will find a conda environment that can be installed on your computer using a `.yaml` file. You will also find a docker image that can be used to actually run the environment in a containerized environment.


## Contributors:

* Leah A. Wasser (@lwasser)
* Filipe fernandes (@ocefpaf)
* Tim Head (@betatim)
* Chris Holdgraf (@choldgraf)
* Max Joseph  (@mbjoseph)
* Martha Morrissey

## Getting started with the Conda Environment

### 1. Install the Earth Lab Conda Environment on your Local Computer.

To begin, install `git` and `conda` for Python 3.x (we suggest 3.6).

Installing git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

Installing miniconda: https://docs.conda.io/en/latest/miniconda.html

About Conda Environments: https://conda.io/docs/user-guide/tasks/manage-environments.html

### Tutorial On Setup
If you want a more detailed tutorial on setting up this environment using miniconda, 
please visit our learning portal: https://www.earthdatascience.org/workshops/setup-earth-analytics-python/

We recommend installing everything using the with `conda-forge` channel. 

### Quick Start: Setup Your Environment

The tutorial above will provide you with more detailed setup instructions.
But here are the cliff notes:

To begin, install the environment using:

`conda env create -f environment.yml`

This will take a bit of time to run. 

* Also note that for the code above to work, you need to be in the directory where the `environment.yml` file lives so CD to that directory first

`$ cd earth-analytics-python-env`


### Update Your EA Environment from the YAML File

You can update your environment at any time using:

`conda env update -f environment.yml`

To manage your conda environments, use the following commands:

#### View envs installed
`conda info --envs`

#### Activate the environment that you'd like to use

[Conda 4.6 and later versions (all operating systems):](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)
```
conda activate earth-analytics-python
```

The environment name is `earth-analytics-python` as
defined in the `environment.yml` file.

## Docker Build

[![Docker Automated build](https://img.shields.io/docker/automated/earthlab/earth-analytics-python-env.svg)](https://hub.docker.com/r/earthlab/earth-analytics-python-env/)

To run a docker container you need to do the following:

1. [Install docker](https://docs.docker.com/install/) and make sure it is running.

2. Build the docker image on your compute locally. Be patient - this will take a bit of time.
Run the following lines to build the docker image locally:

```
cd earth-analytics-python-env
docker build -t earthlab/earth-analytics-python-env .
docker run -it -p 8888:8888 earthlab/earth-analytics-python-env

```

3. Run the image.

To run your earth-analytics image, use the following code:

`docker run --hostname localhost -it -p 8888:8888 earthlab/earth-analytics-python-env`

NOTE: `earthlab/earth-analytics-python-env` is the name of this image as built above. To
view all images on your computer, type
`docker images --all`

One you run your image, you will be given a URL at the command line. Paste that puppy
into your browser to run jupyter with the earth analytics environment installed!!

## Updating the Earth Analytics Environment

If you wish to update the earth analytics environment, do the following.

1. make a **PR** with changes to master
1. An code admin will **merge** the PR into the master branch
1. Check & wait till [Dockerhub](https://hub.docker.com/r/earthlab/earth-analytics-python-env/tags/) has built the image for the merging of the **PR** you can see builds in progress, [here](https://hub.docker.com/r/earthlab/earth-analytics-python-env/builds/)

