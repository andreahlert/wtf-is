# WTF is a Multi-Stage Build?

A Dockerfile technique where you use multiple FROM statements to separate build-time dependencies from the final image. The first stage compiles your code with all the build tools; the final stage copies just the binary into a minimal image.

```
# Stage 1: Build
FROM golang:1.22 AS builder
COPY . .
RUN go build -o app

# Stage 2: Run
FROM alpine:3.19
COPY --from=builder /app /app
CMD ["/app"]

Result:
  builder stage: 800MB (Go compiler, source, deps)
  final image:   15MB  (just alpine + binary)
```

**Examples:** [Docker Multi-Stage Builds](https://docs.docker.com/build/building/multi-stage/), [BuildKit](https://github.com/moby/buildkit), [kaniko](https://github.com/GoogleContainerTools/kaniko)
