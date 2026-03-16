# WTF is Web Manifest?

A JSON file that tells the browser how your web app should behave when installed on a device. It defines the app name, icons, theme color, start URL, and display mode. Without it, your PWA cannot be installed on a user's home screen.

```
manifest.json:
{
  "name": "My App",
  "short_name": "App",
  "start_url": "/",
  "display": "standalone",
  "icons": [{ "src": "icon.png", "sizes": "192x192" }]
}

<link rel="manifest" href="/manifest.json">
```

**Examples:** [Workbox](https://github.com/GoogleChrome/workbox), [Vite PWA](https://github.com/vite-pwa/vite-plugin-pwa), [next-pwa](https://github.com/shadowwalker/next-pwa)
