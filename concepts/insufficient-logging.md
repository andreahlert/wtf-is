# WTF is Insufficient Logging?

Insufficient Logging means your application doesn't record enough security-relevant events (logins, access denials, data changes) or doesn't alert on them. Without proper logs, breaches go undetected for months. Attackers exploit this by knowing their actions won't trigger any alarms.

```
What should be logged:

  ✗  No logs at all
  ✗  Logs exist but nobody monitors them
  ✗  Failed logins not recorded
  ✗  Admin actions not audited

  ✓  Log: auth events, access control failures,
     input validation failures, server errors
  ✓  Alert: anomalous patterns (brute force, data exfil)
  ✓  Retain: enough history for forensics
```

**Examples:** [ELK Stack](https://github.com/elastic/elasticsearch), [Grafana Loki](https://github.com/grafana/loki), [OWASP Logging Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)
