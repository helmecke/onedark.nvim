.PHONY: hooks
hooks:
	git config core.hooksPath .githooks

.PHONY: fmt
fmt:
	stylua --glob '**/*.lua' -- lua

.PHONY: pre-commit
pre-commit:
	stylua -c --glob '**/*.lua' -- lua
