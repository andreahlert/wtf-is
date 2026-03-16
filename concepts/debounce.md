# WTF is Debounce?

A technique that delays executing a function until a pause in events. If events keep firing (like keystrokes in a search box), the function waits until the user stops typing for a specified time. It prevents firing an API call on every single keystroke.

```
User types: H-e-l-l-o (5 keystrokes)

Without debounce:  5 API calls (one per keystroke)
With debounce (300ms):
  H ── e ── l ── l ── o ── [300ms pause] ── 1 API call
  │    │    │    │    │                      ("Hello")
  reset reset reset reset  timer starts
```

**Examples:** [Lodash debounce](https://github.com/lodash/lodash), [use-debounce](https://github.com/xnimorz/use-debounce), [RxJS debounceTime](https://github.com/ReactiveX/rxjs)
