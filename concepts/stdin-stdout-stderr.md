# WTF are stdin, stdout, stderr?

The three default I/O streams every Unix process gets. stdin (fd 0) is input, stdout (fd 1) is normal output, stderr (fd 2) is error output. They can be independently redirected.

```
               +-------------+
stdin (0) ---> |             | ---> stdout (1) --> normal output
  keyboard     |   process   |
  or pipe      |             | ---> stderr (2) --> error messages
               +-------------+

$ ./app > output.log 2> errors.log    # separate streams
$ ./app 2>&1 | grep error             # combine both into pipe
$ echo "input" | ./app                # pipe to stdin
```

**Examples:** [GNU Coreutils](https://www.gnu.org/software/coreutils/), [POSIX spec](https://pubs.opengroup.org/onlinepubs/9699919799/), [The Linux Command Line](https://github.com/learnbyexample/cli-computing)
