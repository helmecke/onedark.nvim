.PHONY: fmt

fmt:
	stylua --glob '**/*.lua' -- lua

pre-commit:
	stylua -c --glob '**/*.lua' -- lua
