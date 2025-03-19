.PHONY: help setup
.DEFAULT_GOAL = help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup: ## Install the project's dependencies
	@echo "\nCreating virtual environment...\n"
	@python3 -m venv .venv
	@echo "\nInstalling python dependencies...\n"
	source .venv/bin/activate && pip install --no-cache-dir -r requirements.txt