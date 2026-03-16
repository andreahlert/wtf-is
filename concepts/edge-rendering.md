# WTF is Edge Rendering?

Running your server-side rendering logic on servers geographically close to the user, instead of in a single central data center. The "edge" means CDN nodes spread across the world. Your page renders faster because the server doing the work is physically closer to whoever requested it.

```
Central SSR:                  Edge Rendering:

User (Tokyo) ──────────►     User (Tokyo) ──► Edge (Tokyo)
   long trip to               short trip!
   US-East server
                              User (Berlin) ──► Edge (Berlin)
```

**Examples:** [Vercel Edge Functions](https://vercel.com/features/edge-functions), [Cloudflare Workers](https://workers.cloudflare.com), [Deno Deploy](https://deno.com/deploy)
