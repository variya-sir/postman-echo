help:  ## Show help for each command
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

install-newman: ## Install newman
	npm install -g newman

run-collection: run-c0 run-c1 run-c2 ## Run all collections

run-c0: ## Run Collection 0
	newman run ./collection/c0_collection_structure.json

run-c1: ## Run Collection 1
	newman run ./collection/c1_using_variables.json

run-c2: ## Run Collection 2
	newman run ./collection/c2_writing_script.json
