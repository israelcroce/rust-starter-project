## dev: run development application
.PHONY: dev
dev:
	cargo make watch

## lint: run linter
.PHONY: lint
lint:
	cargo make lint

## test: run all tests
.PHONY: test
test:
	cargo make test

## build: run debug build application
.PHONY: build
build:
	cargo make build

## build: run release build application
.PHONY: build-release
build-release:
	cargo make build-release

## dev-docker: run docker development application
.PHONY: dev-docker
dev-docker:
	docker-compose up
