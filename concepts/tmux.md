# WTF is tmux?

A terminal multiplexer that lets you create multiple panes and windows in one terminal, and keeps sessions alive when you disconnect. The most widely used tool of its kind.

```
tmux session "dev"
+-------------------+-------------------+
| Window 1: editor  | Window 2: server  |
|                   |                   |
| Pane 1 | Pane 2   | Pane 1           |
| vim    | tests    | npm start        |
+-------------------+-------------------+

Ctrl-b d  --> detach (processes keep running)
tmux a    --> reattach later
```

**Examples:** [tmux](https://github.com/tmux/tmux), [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm), [Oh My Tmux](https://github.com/gpakosz/.tmux)
