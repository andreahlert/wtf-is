# WTF is Encryption at Rest?

Encryption at Rest means data is encrypted when stored on disk, in databases, or in backups. If someone steals the hard drive or gets access to the storage, they see gibberish instead of your data. The encryption key is stored separately so physical access to storage alone isn't enough to read the data.

```
Without encryption at rest:
  Disk: { name: "Alice", ssn: "123-45-6789" }
  Stolen disk → attacker reads everything

With encryption at rest:
  Disk: 7f3a9c2b1e... (encrypted blob)
  Stolen disk → useless without the key

  ┌──────┐    encrypt    ┌──────────┐
  │ Data │──────────────▶│ Storage  │ (encrypted)
  └──────┘               └──────────┘
  ┌──────┐                    │
  │ Key  │ stored separately  │ decrypt
  └──────┘───────────────────▶│
```

**Examples:** [AWS KMS](https://aws.amazon.com/kms/), [LUKS](https://gitlab.com/cryptsetup/cryptsetup), [HashiCorp Vault](https://github.com/hashicorp/vault)
