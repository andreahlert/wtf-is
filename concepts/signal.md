# WTF is a Signal?

A message sent to a process by the OS or another process to notify it of an event. Processes can catch most signals and handle them gracefully, except SIGKILL which forces immediate termination.

```
Signal      Number  Default     Use
SIGHUP      1       Terminate   Terminal closed
SIGINT      2       Terminate   Ctrl+C
SIGQUIT     3       Core dump   Ctrl+\
SIGKILL     9       Terminate   Force kill (uncatchable)
SIGTERM     15      Terminate   Polite "please stop"
SIGSTOP     19      Stop        Pause (uncatchable)
SIGCONT     18      Continue    Resume paused process

$ kill -TERM 1234     # ask process to stop
$ kill -9 1234        # force kill (last resort)
```

**Examples:** [GNU C Library Signals](https://www.gnu.org/software/libc/manual/html_node/Signal-Handling.html), [signal(7) man page](https://man7.org/linux/man-pages/man7/signal.7.html), [tini](https://github.com/krallin/tini)
