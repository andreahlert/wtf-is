# WTF is Server-Side Rendering?

The server runs your JavaScript framework, generates the full HTML for a page, and sends it to the browser. The user sees content immediately instead of staring at a blank page while JS downloads and executes. After the HTML arrives, JavaScript takes over to make the page interactive.

```
Browser request ──► Server runs React/Vue/etc
                    ──► Generates HTML string
                    ──► Sends complete HTML to browser
                    ──► JS loads, page becomes interactive
```

**Examples:** [Next.js](https://github.com/vercel/next.js), [Nuxt](https://github.com/nuxt/nuxt), [SvelteKit](https://github.com/sveltejs/kit)
