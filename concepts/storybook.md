# WTF is Storybook?

A tool that lets you develop and test UI components in isolation, outside your main app. Each component gets a "story" that renders it in different states. You can visually inspect, interact with, and document components without running your full application.

```
Your App                    Storybook (separate)
┌──────────┐               ┌──────────────────┐
│ complex  │               │ Button: default   │
│ app with │               │ Button: disabled  │
│ routing  │               │ Button: loading   │
│ state    │               │ Modal: open       │
│ APIs     │               │ Modal: with error │
└──────────┘               └──────────────────┘
```

**Examples:** [Storybook](https://github.com/storybookjs/storybook), [Ladle](https://github.com/tajo/ladle), [Histoire](https://github.com/histoire-dev/histoire)
