# WTF is a Makefile?

A file that defines build targets and their commands, run with `make`. Originally for compiling C programs, now widely used as a task runner for any project. Targets can depend on other targets.

```
# Makefile

build: lint test
	docker build -t myapp .

test:
	pytest tests/

lint:
	ruff check src/

deploy: build
	kubectl apply -f k8s/

$ make deploy    # runs lint -> test -> build -> deploy
```

**Examples:** [GNU Make](https://www.gnu.org/software/make/), [Make docs](https://www.gnu.org/software/make/manual/), [cmake](https://github.com/Kitware/CMake)
