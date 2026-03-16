# WTF is Capacitor?

A runtime that wraps your web app (HTML/CSS/JS) in a native container so it can run as an iOS or Android app with access to native device features like camera, GPS, and push notifications. You build a normal web app, then Capacitor packages it and provides a JavaScript bridge to native APIs.

```
Your web app (React, Vue, whatever)
        │
        ▼
┌─────────────────────┐
│     Capacitor        │
│  ┌───────────────┐  │
│  │   Web View    │  │  ← Your app runs here
│  └───────────────┘  │
│  Native bridge       │  ← Camera, GPS, push, filesystem
└─────────────────────┘
        │
   iOS / Android app
```

**Examples:** [Capacitor](https://github.com/ionic-team/capacitor), [Ionic Framework](https://github.com/ionic-team/ionic-framework), [Capacitor Plugins](https://github.com/ionic-team/capacitor-plugins)
