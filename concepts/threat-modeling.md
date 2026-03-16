# WTF is Threat Modeling?

Threat Modeling is a structured process of identifying what can go wrong with your system's security before you build it (or while you improve it). You map out your system, identify trust boundaries, list potential threats, and decide what to mitigate. It answers: "what are we most worried about and what are we doing about it?"

```
STRIDE model (common framework):

  S  Spoofing         "Can someone pretend to be a user?"
  T  Tampering        "Can someone modify data in transit?"
  R  Repudiation      "Can someone deny they did something?"
  I  Info Disclosure  "Can data leak to unauthorized people?"
  D  Denial of Service "Can someone take us offline?"
  E  Elevation        "Can someone gain admin access?"

  For each component → ask each STRIDE question
```

**Examples:** [OWASP Threat Dragon](https://github.com/OWASP/threat-dragon), [Microsoft Threat Modeling Tool](https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool), [Threagile](https://github.com/Threagile/threagile)
