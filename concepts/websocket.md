# WTF is a WebSocket?

A protocol that keeps a persistent, two-way connection between client and server. Unlike HTTP where the client asks and the server responds, WebSocket lets both sides send messages at any time. You open the connection once and it stays open. Perfect for real-time stuff where polling would be wasteful.

```
HTTP (request/response):
  Client ──→ "any updates?"  ──→ Server
  Client ←── "nope"          ←──
  Client ──→ "any updates?"  ──→ Server
  Client ←── "nope"          ←──
  Client ──→ "any updates?"  ──→ Server
  Client ←── "yes, here"     ←──     ← waste of requests

WebSocket (persistent):
  Client ←──────────────────────→ Server
              open connection
  Server ──→ "hey, new message"   ← server pushes when ready
  Client ──→ "typing..."         ← client sends when ready
```

**Examples:** Chat apps, live dashboards, multiplayer games, collaborative editing (Figma)
