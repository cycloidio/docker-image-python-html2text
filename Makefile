
COMMIT_HASH := "8ddc844"

.PHONY: help
help: ## Show this help
	@echo "Use one of the following targets"
	@echo
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/:.*##/:##/' | column -t -s '##'

.PHONY: build
build: ## Build the docker image
	@docker build --build-arg H2T_COMMIT_HASH="$(COMMIT_HASH)" -t cycloid/python-html2text:$(COMMIT_HASH) .


.PHONY: push
push: ## Push the docker image to Docker Hub
	@docker push cycloid/python-html2text:$(COMMIT_HASH)
