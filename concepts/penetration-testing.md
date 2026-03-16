# WTF is Penetration Testing?

Penetration Testing (pentesting) is hiring skilled humans to try to break into your systems the same way a real attacker would. Unlike automated scanners, pentesters chain vulnerabilities together, think creatively, and test business logic flaws. They produce a report with findings, severity ratings, and remediation advice.

```
Pentest phases:

  Recon        → Map the target, find endpoints
       │
  Scanning     → Identify open ports, services, tech stack
       │
  Exploitation → Try to break in using found weaknesses
       │
  Post-exploit → Pivot, escalate privileges, access data
       │
  Report       → Document findings + how to fix them

Types: Black box (no info), White box (full access),
       Gray box (partial info)
```

**Examples:** [Metasploit](https://github.com/rapid7/metasploit-framework), [Burp Suite](https://portswigger.net/burp), [Kali Linux](https://www.kali.org/)
