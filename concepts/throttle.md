# WTF is Throttle?

A technique that ensures a function runs at most once every N milliseconds, no matter how often the event fires. Unlike debounce (which waits for a pause), throttle fires at regular intervals. Good for scroll and resize events where you want steady updates, not delayed ones.

```
Scroll events firing rapidly:

Without throttle:  ||||||||||||||||  (every event fires handler)
With throttle (200ms):
  |....|....|....|  (fires once per interval)

Debounce waits for calm.
Throttle fires at a steady pace.
```

**Examples:** [Lodash throttle](https://github.com/lodash/lodash), [RxJS throttleTime](https://github.com/ReactiveX/rxjs), [raf-schd](https://github.com/alexreardon/raf-schd)
