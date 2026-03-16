# WTF is Network Segmentation?

Network Segmentation divides your network into isolated zones so that a breach in one zone can't spread to others. Your web servers, databases, and internal tools sit in separate segments with firewalls between them. If an attacker compromises the web server, they can't reach the database directly because the network doesn't allow it.

```
Without segmentation:
  ┌──────────────────────────────┐
  │      One flat network        │
  │  Web ↔ DB ↔ Admin ↔ CI/CD   │
  │  Compromise one = access all │
  └──────────────────────────────┘

With segmentation:
  ┌──────────┐    ┌──────────┐    ┌──────────┐
  │ Public   │    │ Private  │    │ Internal │
  │ (web)    │───▶│ (app+db) │    │ (admin)  │
  └──────────┘    └──────────┘    └──────────┘
       firewall        firewall        firewall

  Web can talk to App.
  App can talk to DB.
  Web CANNOT talk to DB directly.
  Nobody from outside reaches Internal.
```

**Examples:** [AWS VPC](https://aws.amazon.com/vpc/), [Calico](https://github.com/projectcalico/calico), [Cilium](https://github.com/cilium/cilium)
