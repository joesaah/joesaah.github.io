SHELL := /bin/bash

.PHONY: $(SERVICES) logs

help: ## This info
	@echo '_________________'
	@echo '| Make targets: |'
	@echo '-----------------'
	@echo
	@cat Makefile | grep -E '^[a-zA-Z\/_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo

start: ## Starts dev server
	npm run start

build: ## Builds React app
	npm run build

deploy: ## Builds and deploys the React app to Github Pages
	npm run deploy

test: ## Runs React tests
	npm run test
