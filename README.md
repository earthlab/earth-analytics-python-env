# earth-analytics-environment
a demo repo to test the ea envt in binder

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/earthlab/earth-analytics-binder/master)

## Getting started with the Conda Environment

### 1. Install the Earth Lab Conda Environment on your Local Computer.

To begin, install the conda for Python 3.x. We suggest 3.6 now.
We recommend installing geo-related dependencies with `conda-forge`. We
have created a custom yaml list with all of the dependencies that you will
need to run the lessons in this course. Follow
these steps below to get your environment ready.

About Conda Environments: https://conda.io/docs/user-guide/tasks/manage-environments.html

An environment for conda has been created specifically for this course. To load this run:

`conda env create -f environment.yml`

* Note that it takes a bit of time to run this setup
* Also note that for the code above to work, you need to be in the directory where the `environment.yml` file lives.

To manage your conda environments, use the following commands:

#### View envs installed
`conda info --envs`

#### Activate the environment that you'd like to use

`source activate myenv-name`

In our case, the environment that we are using is called: `earth-analytics-python`. This name is
defined in the `environment.yml` file. Thus you'd type:

`source activate earth-analytics-python`

to activate it once it's installed.
