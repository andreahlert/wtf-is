# WTF is a Process?

A process is a running instance of a program with its own isolated memory space. Processes can't accidentally corrupt each other's memory because the OS keeps them separate. Communication between processes requires explicit mechanisms like pipes or sockets.

```
┌──────────────┐    ┌──────────────┐
│  Process A    │    │  Process B    │
│  own memory   │    │  own memory   │
│  own threads  │    │  own threads  │
│  PID: 1234    │    │  PID: 5678    │
└──────┬───────┘    └──────┬───────┘
       │                    │
       └──── IPC/pipe/socket ────┘
             (explicit communication)
```

**Examples:** [Node.js child_process](https://github.com/nodejs/node), [Python multiprocessing](https://github.com/python/cpython), [Erlang/OTP](https://github.com/erlang/otp)
