# WTF is a Redirect?

Shell operators (`>`, `>>`, `<`, `2>`) that send a command's input or output to files instead of the terminal. You can redirect stdout, stderr, or both independently.

```
$ command > file.txt       # stdout to file (overwrite)
$ command >> file.txt      # stdout to file (append)
$ command 2> errors.txt    # stderr to file
$ command &> all.txt       # stdout + stderr to file
$ command < input.txt      # file to stdin
$ command 2>/dev/null      # discard errors

+----------+
| command  |--stdout--> file.txt
|          |--stderr--> errors.txt
+----------+
     ^
     stdin <-- input.txt
```

**Examples:** [GNU Bash Manual](https://www.gnu.org/software/bash/manual/bash.html#Redirections), [ShellCheck](https://github.com/koalaman/shellcheck), [explainshell](https://explainshell.com/)
