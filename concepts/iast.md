# WTF is IAST?

IAST (Interactive Application Security Testing) instruments your running application from the inside using an agent. It monitors data flow during normal testing or QA, watching how user input travels through the code. It combines the accuracy of SAST (knows the code) with the realism of DAST (tests a running app).

```
  ┌───────────────────────────────────┐
  │         Running Application       │
  │  ┌───────────┐                    │
  │  │ IAST Agent│ ← monitors data    │
  │  │ (inside)  │   flow at runtime  │
  │  └───────────┘                    │
  └───────────────────────────────────┘
          │
          ▼
  "User input from /login reached SQL query
   at UserDAO.java:34 without sanitization"

  Pros: Low false positives, pinpoints exact code
  Cons: Needs app running, agent overhead
```

**Examples:** [Contrast Security](https://www.contrastsecurity.com/), [Hdiv](https://github.com/hdiv/hdiv), [OpenRASP](https://github.com/baidu/openrasp)
