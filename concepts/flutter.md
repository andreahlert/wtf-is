# WTF is Flutter?

Google's framework for building native mobile, web, and desktop apps from a single Dart codebase. Unlike React Native, Flutter does not use platform UI components. It draws every pixel itself using its own rendering engine (Skia/Impeller), giving you full control over how everything looks on every platform.

```
Flutter code (Dart):

Widget build() {
  return Column(
    children: [
      Text('Hello'),     ──► Rendered by Flutter engine
      ElevatedButton(),  ──► NOT a native button
    ],                       Same pixels on iOS + Android
  );
}
```

**Examples:** [Flutter](https://github.com/flutter/flutter), [Flutter Gallery](https://github.com/flutter/gallery), [Riverpod](https://github.com/rrousselGit/riverpod)
