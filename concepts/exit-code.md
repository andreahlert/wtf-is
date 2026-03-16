# WTF is an Exit Code?

A number (0-255) that a process returns when it finishes. 0 means success, anything else means failure. Scripts and CI systems use exit codes to decide what to do next.

```
$ grep "pattern" file.txt
$ echo $?                   # prints the exit code
0                            # found it (success)

$ grep "missing" file.txt
$ echo $?
1                            # not found (failure)

Common codes:
  0   success
  1   general error
  2   misuse of command
  126 permission denied
  127 command not found
  130 killed by Ctrl+C (128 + signal 2)
```

**Examples:** [GNU Bash Manual](https://www.gnu.org/software/bash/manual/bash.html#Exit-Status), [POSIX spec](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html), [ShellCheck](https://github.com/koalaman/shellcheck)
