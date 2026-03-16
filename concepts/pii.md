# WTF is PII?

PII (Personally Identifiable Information) is any data that can identify a specific person. Names, email addresses, phone numbers, SSNs, IP addresses, and biometric data are all PII. Regulations like GDPR and CCPA require special handling: you must know where PII lives, who can access it, how long you keep it, and how you protect it.

```
Direct PII (identifies on its own):
  ● Full name
  ● Email address
  ● SSN / national ID
  ● Phone number
  ● Biometric data

Indirect PII (identifies when combined):
  ● Date of birth
  ● ZIP code
  ● Gender
  ● Job title
  (combine 3+ → often uniquely identifies someone)

  You must: encrypt it, limit access, log who touches it,
            delete it when no longer needed, report breaches
```

**Examples:** [Microsoft Presidio](https://github.com/microsoft/presidio), [piicatcher](https://github.com/tokern/piicatcher), [AWS Macie](https://aws.amazon.com/macie/)
