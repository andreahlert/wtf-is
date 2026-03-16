# WTF is CNI?

Container Network Interface. A standard for plugins that configure networking for containers. The container runtime calls a CNI plugin to set up (or tear down) a container's network: IP address, routes, DNS.

```
Container Runtime (Kubernetes, Podman)
        |
        v
  CNI Plugin (Calico, Cilium, Flannel)
        |
        v
  +-- Container --+
  | eth0: 10.0.1.5|  <-- assigned by CNI
  | routes, DNS   |
  +---------------+

Runtime just says "give this container a network."
Plugin handles the how.
```

**Examples:** [CNI Spec](https://github.com/containernetworking/cni), [CNI Plugins](https://github.com/containernetworking/plugins), [Cilium](https://github.com/cilium/cilium)
