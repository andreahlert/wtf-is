# WTF is XSS?

XSS (Cross-Site Scripting) is when an attacker injects malicious JavaScript into a web page that other users visit. The browser trusts the page and runs the script, letting the attacker steal cookies, session tokens, or redirect users to phishing sites. It happens because the app renders user input as HTML/JS without sanitizing it first.

```
User Input:  <script>steal(document.cookie)</script>

Vulnerable App:
┌──────────────────────────────┐
│  Welcome, <script>steal(     │  ← Server puts raw input in HTML
│  document.cookie)</script>!  │
└──────────────────────────────┘
        │
        ▼
  Browser executes the script
  Cookies sent to attacker
```

**Examples:** [DOMPurify](https://github.com/cure53/DOMPurify), [helmet](https://github.com/helmetjs/helmet), [OWASP XSS Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
