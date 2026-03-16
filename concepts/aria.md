# WTF is ARIA?

A set of HTML attributes that add accessibility information to elements when semantic HTML alone is not enough. ARIA tells screen readers what a custom widget is, what state it is in, and how to interact with it. The first rule of ARIA: do not use ARIA if a native HTML element already does the job.

```
Without ARIA:                 With ARIA:

<div class="tab active">      <div role="tab"
  Settings                         aria-selected="true"
</div>                             aria-controls="panel-1">
                                Settings
Screen reader: "Settings"     </div>
                              Screen reader: "Settings, tab, selected"
```

**Examples:** [Radix](https://github.com/radix-ui/primitives), [Headless UI](https://github.com/tailwindlabs/headlessui), [React Aria](https://github.com/adobe/react-spectrum)
