# WTF is HSM?

An HSM (Hardware Security Module) is a physical, tamper-resistant device that generates, stores, and manages cryptographic keys. Unlike software-based key storage, the keys physically cannot be extracted from the device. If someone tries to open it, it destroys the keys. Cloud KMS services often use HSMs under the hood.

```
  ┌─────────────────────────────────┐
  │  HSM (physical device)          │
  │  ┌───────────────────────────┐  │
  │  │  Private keys stored here │  │
  │  │  NEVER leave the device   │  │
  │  └───────────────────────────┘  │
  │  Tamper detection:              │
  │  - Physical intrusion → wipe    │
  │  - Voltage tampering → wipe     │
  │  - Temperature anomaly → wipe   │
  └─────────────────────────────────┘
           │
    API: "sign this data"
    HSM signs internally, returns signature
    Key never exposed
```

**Examples:** [AWS CloudHSM](https://aws.amazon.com/cloudhsm/), [YubiHSM](https://github.com/Yubico/yubihsm-shell), [SoftHSM](https://github.com/opendnssec/SoftHSMv2)
