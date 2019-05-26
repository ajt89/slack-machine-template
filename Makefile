include .env
export

clean:
	- rm -rf .venv

install:
	- python3.7 -m venv .venv; \
	. .venv/bin/activate; \
	pip install -r requirements-dev.txt

update:
	. .venv/bin/activate; \
	pip install -r requirements-dev.txt

run:
	- . .venv/bin/activate; \
	slack-machine

format:
	black .

docker-build:
	- docker build -t ajt89/slack-machine-template:active .

docker-run:
	- docker run --rm -e SLACK_TOKEN=$(SLACK_TOKEN) ajt89/slack-machine-template:active
