# WTF is CNAME vs A Record?

An A record maps a domain name directly to an IP address. A CNAME (Canonical Name) record maps a domain name to another domain name, which then resolves to an IP. Use A records for the final destination and CNAMEs for aliases. You can't put a CNAME on the root domain (example.com), only on subdomains (www.example.com).

```
A Record:
  example.com  -->  A  -->  93.184.216.34
  (name to IP, direct)

CNAME Record:
  www.example.com --> CNAME --> example.com --> A --> 93.184.216.34
  (name to name to IP, alias)

  blog.example.com --> CNAME --> myapp.herokuapp.com --> A --> 1.2.3.4

Common pattern:
  example.com      A      93.184.216.34     (root, must be A)
  www.example.com  CNAME  example.com       (alias to root)
  api.example.com  A      93.184.216.35     (different IP)
```

**Examples:** [CoreDNS](https://github.com/coredns/coredns), [PowerDNS](https://github.com/PowerDNS/pdns), [dnscontrol](https://github.com/StackExchange/dnscontrol)
