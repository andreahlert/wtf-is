# WTF is OCI?

Open Container Initiative. A set of standards that define what a container image looks like and how a container runtime should execute it. This is why Docker images work with Podman, containerd, CRI-O, and others.

```
OCI defines two specs:

Image Spec                    Runtime Spec
+------------------+         +------------------+
| manifest.json    |         | config.json      |
| layers (tar+gz)  |   -->   | root filesystem  |
| config           |         | process, mounts  |
+------------------+         | namespaces       |
                              +------------------+
 "what's in the box"         "how to run the box"

Any OCI-compliant tool can build, push, pull, and run these.
```

**Examples:** [OCI Spec](https://github.com/opencontainers/image-spec), [runc](https://github.com/opencontainers/runc), [OCI Runtime Spec](https://github.com/opencontainers/runtime-spec)
