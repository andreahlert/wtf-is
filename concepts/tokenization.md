# WTF is Tokenization (Security)?

Tokenization replaces sensitive data with a random, non-reversible token that maps back to the original only through a secure vault. Unlike encryption, the token has no mathematical relationship to the original data. It's how payment processors handle credit card numbers: your app stores "tok_abc123" instead of the actual card number.

```
  Credit card: 4242-4242-4242-4242
       │
       ▼ tokenize
  Token: tok_abc123 (random, meaningless)

  ┌──────────┐                  ┌────────────┐
  │ Your App │  stores token    │ Token Vault│
  │ Database │  tok_abc123      │ tok_abc123 │
  │          │                  │ → 4242...  │
  └──────────┘                  └────────────┘

  Your DB breached? Attacker gets tok_abc123
  Useless without access to the vault.

  Encryption: ciphertext → decrypt → original (math)
  Tokenization: token → lookup in vault → original (mapping)
```

**Examples:** [Stripe](https://stripe.com/docs/security), [Vault (HashiCorp)](https://github.com/hashicorp/vault), [Basis Theory](https://github.com/Basis-Theory)
