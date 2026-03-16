# WTF is PCI DSS?

PCI DSS (Payment Card Industry Data Security Standard) is the set of security requirements for any organization that stores, processes, or transmits credit card data. It covers network security, encryption, access control, monitoring, and regular testing. Non-compliance can mean fines, higher transaction fees, or losing the ability to accept card payments.

```
12 Requirements (simplified):

  Network:    1. Firewall  2. No default passwords
  Card data:  3. Protect stored data  4. Encrypt in transit
  Vuln mgmt:  5. Antivirus  6. Secure development
  Access:     7. Need-to-know  8. Unique IDs  9. Physical
  Monitoring: 10. Log all access  11. Regular testing
  Policy:     12. Security policy

  Easiest path: don't store card data yourself
  Use Stripe/Braintree → they handle PCI compliance
  You just do SAQ-A (simplest self-assessment)
```

**Examples:** [Stripe PCI](https://stripe.com/docs/security/guide), [PCI Security Standards](https://www.pcisecuritystandards.org/), [Vanta](https://www.vanta.com/)
