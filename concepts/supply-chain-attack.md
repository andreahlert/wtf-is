# WTF is Supply Chain Attack?

A Supply Chain Attack targets the tools, libraries, or build systems you depend on rather than your code directly. Instead of hacking your app, the attacker compromises a dependency you install, a CI/CD pipeline you use, or a build tool you trust. When you pull the compromised component, you ship malware to your users.

```
Normal:
  npm install popular-lib → safe code ✓

Attack:
  Attacker compromises popular-lib's maintainer account
       │
       ▼
  Publishes popular-lib with backdoor
       │
       ▼
  npm install popular-lib → malicious code ships
       │                     to all downstream users
       ▼
  Your app, your users, compromised
```

**Examples:** [Socket](https://github.com/SocketDev/socket), [Sigstore](https://github.com/sigstore/sigstore), [SLSA](https://github.com/slsa-framework/slsa)
