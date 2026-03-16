# WTF is Ingress?

A Kubernetes resource that manages external HTTP/HTTPS access to services inside the cluster. It defines routing rules (hostname, path) so one entry point can direct traffic to different services. You need an Ingress Controller to actually enforce the rules.

```
Internet
   |
+--v--------------+
| Ingress Rules    |
| api.app.com  -> svc-api
| web.app.com  -> svc-web
| app.com/docs -> svc-docs
+------------------+
   |       |       |
 svc-api svc-web svc-docs
```

**Examples:** [NGINX Ingress Controller](https://github.com/kubernetes/ingress-nginx), [Traefik](https://github.com/traefik/traefik), [Contour](https://github.com/projectcontour/contour)
