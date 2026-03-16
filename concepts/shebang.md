# WTF is a Shebang?

The `#!` at the very first line of a script that tells the OS which interpreter to use. Without it, the system doesn't know if your file is bash, python, or something else.

```
#!/bin/bash           --> run with bash
#!/usr/bin/env python --> run with python (from PATH)
#!/usr/bin/env node   --> run with node

$ cat myscript
#!/usr/bin/env python
print("hello")

$ chmod +x myscript
$ ./myscript          --> OS reads #! and uses python
```

**Examples:** [shellcheck](https://github.com/koalaman/shellcheck), [GNU Bash](https://www.gnu.org/software/bash/), [env command](https://www.gnu.org/software/coreutils/manual/html_node/env-invocation.html)
