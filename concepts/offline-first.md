# WTF is Offline-First?

A design approach where your app is built to work without an internet connection as the default state, not as an afterthought. Data is stored locally first, then synced to the server when connectivity returns. The app never shows a "no connection" error page.

```
Online:   App ──► Local DB ◄──sync──► Server
Offline:  App ──► Local DB            (queued)
Back on:  App ──► Local DB ◄──sync──► Server (flush queue)
```

**Examples:** [PouchDB](https://github.com/pouchdb/pouchdb), [Workbox](https://github.com/GoogleChrome/workbox), [RxDB](https://github.com/pubkey/rxdb)
