# WTF is SOAR?

SOAR (Security Orchestration, Automation, and Response) automates your response to security alerts. Instead of a human manually investigating every alert, SOAR runs playbooks: "if SIEM detects brute force, automatically block the IP, create a ticket, notify the team, and collect forensic data." It turns manual runbooks into automated workflows.

```
SIEM alert: "Brute force from 1.2.3.4"
       │
       ▼
  ┌──────────────────────────────┐
  │  SOAR Playbook (automated)   │
  │                              │
  │  1. Block IP at firewall     │
  │  2. Check if IP is known bad │
  │  3. Collect related logs     │
  │  4. Create incident ticket   │
  │  5. Notify security team     │
  │  6. If confirmed: escalate   │
  └──────────────────────────────┘

  Without SOAR: analyst does all 6 steps manually
  With SOAR: done in seconds, analyst reviews result
```

**Examples:** [Shuffle](https://github.com/Shuffle/Shuffle), [TheHive](https://github.com/TheHive-Project/TheHive), [Cortex XSOAR](https://www.paloaltonetworks.com/cortex/cortex-xsoar)
