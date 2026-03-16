# WTF are Design Tokens?

Named values that store visual design decisions like colors, spacing, fonts, and border radii. Instead of hardcoding `#1a73e8` everywhere, you use `color-primary`. Tokens can be exported to CSS variables, iOS, Android, or any platform from a single source of truth.

```
Source of truth:
  color-primary: #1a73e8
  spacing-md: 16px
  font-body: "Inter"
       │
       ├──► CSS:      --color-primary: #1a73e8
       ├──► iOS:      UIColor.primary
       └──► Android:  R.color.primary
```

**Examples:** [Style Dictionary](https://github.com/amzn/style-dictionary), [Tokens Studio](https://github.com/tokens-studio/figma-plugin), [Open Props](https://github.com/argyleink/open-props)
