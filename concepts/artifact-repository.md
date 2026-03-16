# WTF is an Artifact Repository?

A centralized storage for build outputs: JARs, Docker images, npm packages, Helm charts, binaries. It's where CI puts the things it builds and where CD pulls the things it deploys. Supports versioning, access control, and proxying external repos.

```
CI Pipeline                 Artifact Repo              Deploy
+--------+    push         +-------------+   pull     +------+
| build  | ------------->  | v1.0.jar    | ---------> | prod |
| test   |                | v1.1.jar    |            +------+
| package|                | v1.2.jar    |
+--------+                | chart-1.0.tgz|
                          +-------------+
```

**Examples:** [Artifactory](https://jfrog.com/artifactory/), [Nexus](https://github.com/sonatype/nexus-public), [Harbor](https://github.com/goharbor/harbor)
