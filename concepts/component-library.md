# WTF is Component Library?

A package of pre-built, reusable UI components like buttons, modals, inputs, and dropdowns that you install and use in your project. Instead of building every UI element from scratch, you import tested, styled components. Some are unstyled (headless), some come with full styling.

```
Your App
├── import { Button } from 'component-library'
├── import { Modal }  from 'component-library'
├── import { Table }  from 'component-library'
└── Your custom components use them as building blocks
```

**Examples:** [shadcn/ui](https://github.com/shadcn-ui/ui), [Radix](https://github.com/radix-ui/primitives), [Ant Design](https://github.com/ant-design/ant-design)
