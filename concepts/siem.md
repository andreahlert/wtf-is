# WTF is SIEM?

SIEM (Security Information and Event Management) collects logs from all your systems (servers, firewalls, apps, cloud), correlates events across them, and alerts on suspicious patterns. A failed login alone isn't alarming, but 500 failed logins from the same IP across 10 services in 5 minutes is. SIEM connects those dots.

```
  Firewall logs ──┐
  Server logs   ──┤
  App logs      ──┼──▶ ┌──────────┐
  Cloud logs    ──┤    │   SIEM   │
  Auth logs     ──┘    │          │
                       │ Correlate│
                       │ Analyze  │
                       │ Alert    │
                       └──────────┘
                            │
                            ▼
  "User logged in from US, then Russia 2 min later"
  "3 services hit with same SQL injection pattern"
  "Admin account active at 3 AM (unusual)"
```

**Examples:** [Elasticsearch/ELK](https://github.com/elastic/elasticsearch), [Splunk](https://www.splunk.com/), [Wazuh](https://github.com/wazuh/wazuh)
