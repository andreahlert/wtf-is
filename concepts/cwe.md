# WTF is CWE?

CWE (Common Weakness Enumeration) is a catalog of software and hardware weakness types. While CVE identifies specific vulnerabilities ("this version of OpenSSL has a bug"), CWE categorizes the type of flaw ("buffer overflow", "SQL injection"). Think of CWE as the taxonomy and CVE as individual entries.

```
CWE vs CVE:

  CWE-89: SQL Injection (the category)
    ├── CVE-2024-1111 (specific SQL injection in App X)
    ├── CVE-2024-2222 (specific SQL injection in App Y)
    └── CVE-2024-3333 (specific SQL injection in Lib Z)

  CWE-79: Cross-Site Scripting (the category)
    ├── CVE-2024-4444
    └── CVE-2024-5555
```

**Examples:** [CWE List](https://cwe.mitre.org/), [Semgrep](https://github.com/semgrep/semgrep), [CodeQL](https://github.com/github/codeql)
