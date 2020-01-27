include .env
export

clean:
	- rm -rf .venv

install:
	- python3 -m venv .venv; \
	. .venv/bin/activate; \
	pip install -r requirements-dev.txt

update:
	- . .venv/bin/activate; \
	pip install -r requirements-dev.txt

run:
	- . .venv/bin/activate; \
	slack-machine

format:
	- . .venv/bin/activate; \
	black .

docker-build:
	- docker build -t $(DOCKER_HOST)/slack-machine-template:$(TAG) .

docker-run:
	- docker run --rm -e SLACK_TOKEN=$(SLACK_TOKEN) $(DOCKER_HOST)/slack-machine-template:$(TAG)

docker-push:
	- docker push $(DOCKER_HOST)/slack-machine-template:$(TAG)
