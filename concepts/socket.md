# WTF is Socket?

A socket is an endpoint for sending and receiving data over a network. It's identified by an IP address plus a port number (like 192.168.1.5:8080). Your app creates a socket, binds it to an address, and uses it to read/write data. It's the programming interface between your application and the TCP/IP stack.

```
Server:                          Client:
  socket()                         socket()
  bind(0.0.0.0:8080)              connect(1.2.3.4:8080)
  listen()                             |
  accept() ---- connection ---- >     |
     |                                 |
  read() <---- "GET /" ---------- write()
  write() ---- "<html>" -------> read()
     |                                 |
  close()                         close()

Socket = IP + Port + Protocol
  192.168.1.5:8080/TCP
```

**Examples:** [libuv](https://github.com/libuv/libuv), [ZeroMQ](https://github.com/zeromq/libzmq), [Tokio](https://github.com/tokio-rs/tokio)
