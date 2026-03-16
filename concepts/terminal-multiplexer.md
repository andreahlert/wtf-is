# WTF is a Terminal Multiplexer?

A tool that lets you run multiple terminal sessions inside one window, split panes, and keep sessions alive after disconnecting. Essential for remote work over SSH.

```
+-------------------+-------------------+
|                   |                   |
|  vim server.py    |  tail -f logs     |
|                   |                   |
+-------------------+-------------------+
|                                       |
|  $ running tests...                   |
|                                       |
+---------------------------------------+
  One terminal window, three sessions.
  Disconnect SSH, reconnect later, still running.
```

**Examples:** [tmux](https://github.com/tmux/tmux), [Zellij](https://github.com/zellij-org/zellij), [GNU Screen](https://www.gnu.org/software/screen/)
