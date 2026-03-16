# WTF is DNS?

Domain Name System. The phonebook of the internet. It translates human-readable domain names (`google.com`) into IP addresses (`142.250.80.46`) that computers use to find each other. When you type a URL, your browser asks DNS "what IP is this?" before making the actual request.

```
You type: google.com
                │
Browser cache? ─┤── yes → use cached IP
                │
OS cache? ──────┤── yes → use cached IP
                │
DNS resolver ───┤── asks root server → ".com is over there"
                │── asks .com server → "google.com is over there"
                │── asks google's server → "142.250.80.46"
                │
Browser ────────┴── connects to 142.250.80.46

Common record types:
  A      →  domain → IPv4 address
  AAAA   →  domain → IPv6 address
  CNAME  →  domain → another domain (alias)
  MX     →  domain → mail server
```

**Examples:** [Cloudflare DNS](https://www.cloudflare.com/dns/) (1.1.1.1), [Google DNS](https://developers.google.com/speed/public-dns) (8.8.8.8), [Route 53](https://aws.amazon.com/route53/), [dig command](https://linux.die.net/man/1/dig)
