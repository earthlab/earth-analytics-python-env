# earth-analytics-environment
Welcome to the Earth Analytics Environment Repository! Here you will find a conda envt that can be installed on your computer using a `.yaml` file. You will also find a docker image that can be used to actually run the environment in a containerized environment.


[![DOI](https://zenodo.org/badge/132847711.svg)](https://zenodo.org/badge/latestdoi/132847711)

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/earthlab/earth-analytics-binder/master)

## Contributors:

* Leah A. Wasser
* Tim Head
* Chris Holdgraf
* Max Joseph
* Martha Morrissey

## Getting started with the Conda Environment

### 1. Install the Earth Lab Conda Environment on your Local Computer.

To begin, install git and conda for Python 3.x (we suggest 3.6).

Installing git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

Installing conda: https://www.anaconda.com/

We recommend installing geo-related dependencies with `conda-forge`. We
have created a custom yaml list with all of the dependencies that you will
need to run the lessons in this course. Follow
these steps below to get your environment ready.

About Conda Environments: https://conda.io/docs/user-guide/tasks/manage-environments.html

An environment for conda has been created specifically for this course. To load it, run:

`conda env create -f environment.yml`

* Note that it takes a bit of time to run this setup
* Also note that for the code above to work, you need to be in the directory where the `environment.yml` file lives (ex: cd earth-analytics-python-env).

To update this environment from a yaml file use:
`conda env update -f environment.yml`

To manage your conda environments, use the following commands:

#### View envs installed
`conda info --envs`

#### Activate the environment that you'd like to use

On Mac or Linux:

```
source activate earth-analytics-python
```

On Windows:

```
activate earth-analytics-python
```

The environment name is `earth-analytics-python` as
defined in the `environment.yml` file.

## Docker Build

[![Docker Automated build](https://img.shields.io/docker/automated/earthlab/earth-analytics-python-env.svg)](https://hub.docker.com/r/earthlab/earth-analytics-python-env/)

[![Docker Build Status](https://img.shields.io/docker/build/earthlab/earth-analytics-python-env.svg)](https://hub.docker.com/r/earthlab/earth-analytics-python-env/)

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
2. **think** about your changes - don't do silly things or break things :)
3. **merge** the PR into the master branch
4. Check & wait till [Dockerhub](https://hub.docker.com/r/earthlab/earth-analytics-python-env/tags/) has built the image for the merging of the **PR** you can see builds in progress, [here](https://hub.docker.com/r/earthlab/earth-analytics-python-env/builds/)
5. Finally, once the build is complete you can then you can update hub-ops repo with the newly tagged image.

## Important Notes
If the update the `earthpy` package, you must specify the commit number that you
wish to build `earthpy` against. This will ensure that the docker image
automagically rebuilds using the latest version of `earthpy`

like this: `- git+https://github.com/earthlab/earthpy.git@283683affac9e46b1690c7913ebd2621c82ba43a`

This PR should kick off a rebuild of the docker image. But that docker image will
not be usable until it's built off of the master branch.

NOTE 2: The DockerHub build actually takes forever and ever. So it's best to check out the build status rather than assuming it's built.
