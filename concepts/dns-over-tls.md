# WTF is DNS over TLS?

DNS over TLS (DoT) encrypts DNS queries by wrapping them in a TLS connection on port 853. Like DNS over HTTPS, it prevents eavesdropping on your DNS lookups. The difference is DoT uses a dedicated port (easy to identify and block by firewalls) while DoH blends in with regular HTTPS traffic on port 443.

```
Traditional DNS:         DoT (port 853):        DoH (port 443):

  App                      App                    App
   |                        |                      |
  UDP :53                  TLS :853               HTTPS :443
  (plain text)             (encrypted)            (encrypted)
   |                        |                      |
  Easy to snoop          Easy to block           Hard to block
  Easy to tamper         by firewall             (looks like
                                                  web traffic)
```

**Examples:** [Stubby](https://github.com/getdnsapi/stubby), [knot-resolver](https://github.com/CZ-NIC/knot-resolver), [Unbound](https://github.com/NLnetLabs/unbound)
