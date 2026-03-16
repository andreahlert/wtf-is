# WTF is Polling vs Pushing?

Two ways to get updates. Polling: you keep asking "got anything?" at intervals. Pushing: the server tells you when something changes. Polling is simpler but wastes resources when nothing changes. Pushing is efficient but needs persistent connections.

```
  Polling:
  Client ──► "new data?" ──► Server   (no)
  Client ──► "new data?" ──► Server   (no)
  Client ──► "new data?" ──► Server   (yes!)

  Pushing:
  Client ◄── persistent connection ──► Server
  Client ◄── "here's new data" ─────── Server
              (only when it exists)
```

**Examples:** [Socket.IO](https://github.com/socketio/socket.io), [NATS](https://github.com/nats-io/nats-server), [Server-Sent Events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)
