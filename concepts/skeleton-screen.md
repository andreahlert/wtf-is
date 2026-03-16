# WTF is Skeleton Screen?

A placeholder UI that mimics the layout of the actual content with gray shapes while data is loading. Instead of a spinner, users see the rough shape of what is coming. It feels faster because the brain perceives progress, even though loading time is the same.

```
Loading (spinner):       Loading (skeleton):       Loaded:

    ⟳                   ┌───────────────┐         ┌───────────────┐
  Loading...             │ ████ ██       │         │ John Doe      │
                         │ ████████████  │         │ Software Eng  │
                         │ ████████      │         │ San Francisco │
                         └───────────────┘         └───────────────┘
```

**Examples:** [react-loading-skeleton](https://github.com/dvtng/react-loading-skeleton), [Material UI Skeleton](https://github.com/mui/material-ui), [Ant Design Skeleton](https://github.com/ant-design/ant-design)
