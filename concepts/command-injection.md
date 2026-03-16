# WTF is Command Injection?

Command Injection is when an attacker passes OS commands through user input that the app passes to a system shell. If a web app runs something like `ping <user_input>` without sanitizing, an attacker can append `; rm -rf /` and the server will execute both commands. Always use parameterized APIs instead of shell calls.

```
User input:  8.8.8.8; cat /etc/passwd

Server runs:
  ping 8.8.8.8; cat /etc/passwd
       ^^^^^^^^  ^^^^^^^^^^^^^^^^^
       intended   attacker's command

Fix: use libraries, not shell
  ✗  exec("ping " + userInput)
  ✓  subprocess.run(["ping", userInput])
```

**Examples:** [Semgrep](https://github.com/semgrep/semgrep), [ShellCheck](https://github.com/koalaman/shellcheck), [Bandit](https://github.com/PyCQA/bandit)
