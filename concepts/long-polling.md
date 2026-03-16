# WTF is Long Polling?

A compromise between polling and pushing. The client sends a request, and the server holds it open until there's new data (or a timeout). Once the client gets a response, it immediately sends another request. Simpler than WebSockets, more efficient than regular polling.

```
  Client                    Server
    │── GET /updates ────────►│
    │                         │ (waits...)
    │                         │ (waits...)
    │◄── {new data} ─────────│ (data arrives!)
    │                         │
    │── GET /updates ────────►│ (immediately reconnect)
    │                         │ (waits...)
```

**Examples:** [Socket.IO](https://github.com/socketio/socket.io), [CometD](https://github.com/cometd/cometd), [SignalR](https://github.com/dotnet/aspnetcore/tree/main/src/SignalR)
