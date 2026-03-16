# WTF is Mutation Observer?

A browser API that watches for changes to the DOM tree and notifies you when elements are added, removed, or modified. Instead of polling the DOM to detect changes, you set up an observer and get callbacks when mutations happen. Useful for reacting to third-party scripts modifying the page.

```
const observer = new MutationObserver(mutations => {
  // something changed in the DOM
});
observer.observe(document.body, {
  childList: true,
  subtree: true
});

// Now if any script adds/removes elements:
// Your callback fires automatically.
```

**Examples:** [MutationObserver MDN](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver), [morphdom](https://github.com/patrick-steele-idem/morphdom), [stimulus](https://github.com/hotwired/stimulus)
