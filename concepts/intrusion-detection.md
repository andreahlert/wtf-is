# WTF is Intrusion Detection System?

An IDS (Intrusion Detection System) monitors network traffic or system activity for malicious patterns and alerts you when something looks wrong. It doesn't block attacks (that's an IPS), it detects and reports them. Think of it as a security camera: it watches and alerts but doesn't physically stop the intruder.

```
  Network traffic
       │
       ▼
  ┌──────────┐
  │   IDS    │  Analyzes packets/logs
  │          │
  │ Matches: │
  │ ● Known attack signatures
  │ ● Anomalous behavior patterns
  │ ● Policy violations
  └──────────┘
       │
       ▼
  ALERT → "SQL injection attempt from 1.2.3.4"
  ALERT → "Port scan detected"
  ALERT → "Unusual data exfiltration volume"

  IDS = detect + alert
  IPS = detect + alert + block
```

**Examples:** [Snort](https://github.com/snort3/snort3), [Suricata](https://github.com/OISF/suricata), [OSSEC](https://github.com/ossec/ossec-hids)
