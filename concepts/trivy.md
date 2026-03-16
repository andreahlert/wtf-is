# WTF is Trivy?

A security scanner that finds vulnerabilities in container images, file systems, git repos, Kubernetes clusters, and IaC configs. One tool that covers CVEs, misconfigurations, secrets, and license issues.

```
$ trivy image myapp:latest

myapp:latest
  libssl 3.0.2 (CVE-2023-1234, CRITICAL)
  curl   7.88  (CVE-2023-5678, HIGH)
  Total: 2 critical, 3 high, 5 medium

$ trivy config terraform/
  S3 bucket without encryption (MEDIUM)

$ trivy fs --scanners secret .
  AWS access key found in config.py (CRITICAL)
```

**Examples:** [Trivy](https://github.com/aquasecurity/trivy), [trivy-action](https://github.com/aquasecurity/trivy-action), [Aqua Security](https://www.aquasec.com/)
