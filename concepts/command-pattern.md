# WTF is Command Pattern?

Wrap a request as an object so you can parameterize, queue, log, or undo it. Instead of calling `light.turnOn()` directly, you create a `TurnOnCommand` object. This lets you store commands, replay them, or undo them later.

```
  Invoker          Command           Receiver
  ┌────────┐    ┌───────────┐     ┌──────────┐
  │ Button │───►│ TurnOnCmd │────►│  Light   │
  └────────┘    │ execute() │     │ turnOn() │
                │ undo()    │     └──────────┘
                └───────────┘
                     │
               can be queued,
               logged, undone
```

**Examples:** [MediatR](https://github.com/jbogard/MediatR), [Redux](https://github.com/reduxjs/redux), [Axon Framework](https://github.com/AxonFramework/AxonFramework)
