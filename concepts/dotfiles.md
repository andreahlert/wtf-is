# WTF are Dotfiles?

Configuration files that start with a dot (`.bashrc`, `.gitconfig`, `.vimrc`). Developers keep them in a Git repo so they can set up any machine with their preferred shell, editor, and tool settings in minutes.

```
~/.dotfiles/           (git repo)
├── .bashrc            shell config
├── .gitconfig         git settings
├── .vimrc             editor config
├── .tmux.conf         tmux config
└── install.sh         symlinks everything

$ ./install.sh
  ~/.bashrc -> ~/.dotfiles/.bashrc
  ~/.gitconfig -> ~/.dotfiles/.gitconfig
```

**Examples:** [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles), [holman/dotfiles](https://github.com/holman/dotfiles), [chezmoi](https://github.com/twpayne/chezmoi)
