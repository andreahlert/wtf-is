# WTF is HIPAA?

HIPAA (Health Insurance Portability and Accountability Act) is the US law that protects medical information. If your software touches health data (PHI), you must encrypt it, control who accesses it, log all access, sign Business Associate Agreements with vendors, and report breaches. Violations can result in fines up to $1.5M per incident category per year.

```
Protected Health Information (PHI):
  ● Patient names, dates of birth
  ● Medical records, diagnoses
  ● Insurance IDs
  ● ANY data that links a person to health info

Requirements:
  ┌─────────────────────────────────┐
  │ Technical: encryption, access   │
  │           controls, audit logs  │
  │ Physical: secure facilities,    │
  │           device controls       │
  │ Admin:    training, policies,   │
  │           risk assessments      │
  │ BAA:      contracts with every  │
  │           vendor touching PHI   │
  └─────────────────────────────────┘
```

**Examples:** [AWS HIPAA eligible services](https://aws.amazon.com/compliance/hipaa-eligible-services-reference/), [Aptible](https://www.aptible.com/), [Datica](https://datica.com/)
