# slack-machine-template

A simple [slack-machine](https://github.com/DandyDev/slack-machine) example


## Local Installation

### Prerequisites:
- python3

### Setup local.env
1. `$ cp local_env_template.txt .env`
2. Fill in .env settings

### Start the project
1. `$ make install`
2. `$ make run`

## Running a Local Docker Image

### Prerequisites:
- [docker](https://docs.docker.com/install/)

1. `$ cp local_env_template local.env`
2. Fill in local.env settings
3. `$ make build-docker`
4. `$ make run-docker`
