# =============================================================================
# MAKEFILE - terraform-aws-modules
# =============================================================================

.PHONY: fmt validate lint lint-init scan prec prec-all help

fmt: ## Format all modules
	@terraform fmt -recursive .

validate: ## Validate all modules
	@terraform fmt -recursive .
	@for dir in modules/*/; do \
		echo "Validating $$dir..."; \
		cd $$dir && terraform init -backend=false -input=false > /dev/null && terraform validate && cd ../..; \
	done

lint: ## Run tflint on all modules
	@tflint --recursive --config=$(CURDIR)/.tflint.hcl

lint-init: ## Install tflint plugins
	@tflint --init

scan: ## Run trivy security scan
	@trivy config --severity MEDIUM,HIGH,CRITICAL --exit-code 1 .

prec: ## Run pre-commit on staged files
	@pre-commit run

prec-all: ## Run pre-commit on all files
	@pre-commit run --all-files

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'