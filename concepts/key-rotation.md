# WTF is Key Rotation?

Key Rotation is the practice of periodically replacing encryption keys with new ones. If a key is compromised, only data encrypted with that key is at risk. Old keys are kept temporarily to decrypt existing data, then retired. It limits the blast radius of a key leak and is required by most compliance standards.

```
Timeline:

  Jan      Key-A created, encrypts data
  Apr      Key-B created (new default)
            Key-A still decrypts old data
  Jul      Key-C created (new default)
            Key-B decrypts Apr-Jul data
            Key-A retired (old data re-encrypted)

  ┌───────┐  rotate  ┌───────┐  rotate  ┌───────┐
  │ Key A │────────▶ │ Key B │────────▶ │ Key C │
  └───────┘          └───────┘          └───────┘

  If Key B leaked: only Apr-Jul data exposed
  Without rotation: ALL data exposed forever
```

**Examples:** [AWS KMS key rotation](https://aws.amazon.com/kms/), [HashiCorp Vault](https://github.com/hashicorp/vault), [Google Cloud KMS](https://cloud.google.com/kms/docs/key-rotation)
