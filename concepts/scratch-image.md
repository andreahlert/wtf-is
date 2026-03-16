# WTF is a Scratch Image?

The most minimal Docker base image possible: literally nothing. Zero bytes. You start with an empty filesystem and add only your statically compiled binary. The result is the smallest possible container image.

```
FROM scratch
COPY myapp /myapp
CMD ["/myapp"]

Result:
  scratch base:  0 bytes
  final image:   ~5MB (just your binary)

Requirements:
  - Binary must be statically compiled
  - No shell, no libc, no debugging tools
  - No package manager, no users, nothing

alpine:     ~7MB
distroless: ~20MB
scratch:    0MB (+ your binary)
```

**Examples:** [Docker Scratch](https://hub.docker.com/_/scratch), [ko](https://github.com/ko-build/ko), [BuildKit](https://github.com/moby/buildkit)
