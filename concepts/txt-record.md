# WTF is TXT Record?

A TXT record stores arbitrary text in DNS. It's used for domain verification (proving you own a domain), email authentication (SPF, DKIM, DMARC), and service discovery. When Google asks you to "add a TXT record to verify ownership," they're using DNS as a proof-of-control mechanism.

```
$ dig example.com TXT

Common uses:

Domain verification:
  example.com  TXT  "google-site-verification=abc123..."

SPF (who can send email for this domain):
  example.com  TXT  "v=spf1 include:_spf.google.com ~all"

DKIM (email signature public key):
  selector._domainkey.example.com  TXT  "v=DKIM1; k=rsa; p=MIG..."

DMARC (email auth policy):
  _dmarc.example.com  TXT  "v=DMARC1; p=reject"
```

**Examples:** [dnscontrol](https://github.com/StackExchange/dnscontrol), [OctoDNS](https://github.com/octodns/octodns), [CoreDNS](https://github.com/coredns/coredns)
