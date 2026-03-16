# WTF is the Actor Model?

The actor model is a concurrency pattern where "actors" are independent units that communicate only through messages. Each actor has its own private state, processes one message at a time, and can create new actors. No shared memory, no locks.

```
┌─────────┐   message    ┌─────────┐
│ Actor A  │────────────►│ Actor B  │
│ state: x │             │ state: y │
└─────────┘             └────┬────┘
                              │ message
                              ▼
                        ┌─────────┐
                        │ Actor C  │
                        │ state: z │
                        └─────────┘
// Each actor: own state, own mailbox, no sharing
```

**Examples:** [Akka](https://github.com/akka/akka), [Erlang/OTP](https://github.com/erlang/otp), [Microsoft Orleans](https://github.com/dotnet/orleans)
