# WTF is Just?

A command runner that's like Make but simpler and without the build-system baggage. You write recipes in a `justfile` with a clean syntax, and it just runs commands.

```
# justfile

default: test

build:
    docker build -t myapp .

test: lint
    pytest tests/

lint:
    ruff check src/

deploy env="staging":
    kubectl apply -f k8s/{{env}}/

$ just deploy prod
```

**Examples:** [just](https://github.com/casey/just), [just docs](https://just.systems/man/en/), [just examples](https://github.com/casey/just/tree/master/examples)
