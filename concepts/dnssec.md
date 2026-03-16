# WTF is DNSSEC?

DNSSEC adds cryptographic signatures to DNS records so you can verify the response actually came from the domain owner and wasn't tampered with. It doesn't encrypt queries (that's DoH/DoT), it just proves the answers are authentic. Each DNS zone signs its records, and the parent zone vouches for the child's signing key, forming a chain of trust from the root.

```
Root (.)         signs .com's key
  |
.com             signs example.com's key
  |
example.com      signs its own A record

Query: example.com A?
Response:
  A: 93.184.216.34
  RRSIG: (signature proving this answer is legit)

Client verifies:
  ✓ Signature valid for example.com?
  ✓ Key trusted by .com?
  ✓ .com key trusted by root?
  ✓ Root key pre-installed? → AUTHENTIC
```

**Examples:** [Unbound](https://github.com/NLnetLabs/unbound), [BIND9](https://github.com/isc-projects/bind9), [dnsviz](https://github.com/dnsviz/dnsviz)
