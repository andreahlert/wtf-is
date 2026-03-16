# WTF is a Green Thread?

Green threads are threads managed by a runtime or virtual machine instead of the OS. They're lightweight (tiny stacks, fast to create) and multiplexed onto a smaller number of OS threads. You get the thread programming model without the OS overhead.

```
OS Threads (heavy)          Green Threads (light)
┌────┐ ┌────┐ ┌────┐       ┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐
│ T1 │ │ T2 │ │ T3 │       │g││g││g││g││g││g││g││g│
│    │ │    │ │    │       └─┘└─┘└─┘└─┘└─┘└─┘└─┘└─┘
│ 1MB│ │ 1MB│ │ 1MB│         └──mapped onto──┘
└────┘ └────┘ └────┘         ┌────┐ ┌────┐
  OS-managed                  │ T1 │ │ T2 │  OS threads
                              └────┘ └────┘
```

**Examples:** [Go goroutines](https://github.com/golang/go), [Erlang processes](https://github.com/erlang/otp), [Java Virtual Threads](https://github.com/openjdk/jdk)
