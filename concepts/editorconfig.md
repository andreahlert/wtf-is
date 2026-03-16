# WTF is EditorConfig?

A config file (`.editorconfig`) that defines basic code style rules like indentation, line endings, and charset. Editors read it automatically so everyone on the team gets the same settings regardless of their IDE.

```
# .editorconfig

root = true

[*]
indent_style = space
indent_size = 2
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true

[*.md]
trim_trailing_whitespace = false
```

**Examples:** [EditorConfig](https://github.com/editorconfig/editorconfig), [editorconfig-vscode](https://github.com/editorconfig/editorconfig-vscode), [EditorConfig Spec](https://editorconfig.org/)
