# WTF is Telepresence?

A tool that lets you run a service locally while it's connected to a remote Kubernetes cluster. Traffic destined for your service in the cluster gets intercepted and routed to your laptop, so you can debug with local tools while everything else stays in K8s.

```
K8s Cluster:
  [frontend] --> [backend] --> [database]
                     |
              intercept traffic
                     |
Your Laptop:     [backend]
                 (running locally with debugger)
                 (talks to real cluster services)

$ telepresence intercept backend --port 8080
```

**Examples:** [Telepresence](https://github.com/telepresenceio/telepresence), [mirrord](https://github.com/metalbear-co/mirrord), [Gefyra](https://github.com/gefyrahq/gefyra)
