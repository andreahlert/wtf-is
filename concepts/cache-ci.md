# WTF is CI Cache?

Saved files (dependencies, build outputs) persisted between CI runs to avoid re-downloading or re-building them every time. A cache key determines when to reuse or invalidate the cache.

```
Run 1 (no cache):              Run 2 (cache hit):

npm install: 45s               npm install: 3s (from cache)
build: 30s                     build: 30s

Cache key: node-modules-{{ hash('package-lock.json') }}

- uses: actions/cache@v4
  with:
    path: node_modules/
    key: node-${{ hashFiles('package-lock.json') }}
```

**Examples:** [actions/cache](https://github.com/actions/cache), [GitLab CI Cache](https://docs.gitlab.com/ee/ci/caching/), [CircleCI Cache](https://circleci.com/docs/caching/)
