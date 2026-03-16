# WTF is Distroless?

Container images that contain only your app and its runtime dependencies. No package manager, no shell, no utilities, nothing extra. This massively reduces the attack surface since there's nothing for an attacker to exploit if they get in.

```
Regular image (Debian):          Distroless:
+------------------------+      +----------------+
| bash, apt, curl, ls    |      | your app       |
| libc, openssl          |      | runtime (libc) |
| your app               |      +----------------+
| coreutils, grep, find  |        ~20MB
+------------------------+        no shell to exec into
  ~150MB
  lots of CVEs to patch
```

**Examples:** [GoogleContainerTools/distroless](https://github.com/GoogleContainerTools/distroless), [Chainguard Images](https://github.com/chainguard-images), [Wolfi](https://github.com/wolfi-dev)
