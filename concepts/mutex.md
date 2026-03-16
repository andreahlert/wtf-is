# WTF is a Mutex?

A mutex (mutual exclusion) is a lock that ensures only one thread can access a shared resource at a time. A thread locks the mutex before accessing the resource and unlocks it when done. Other threads wait until the lock is released.

```
Without mutex:              With mutex:
Thread A: read  x=5         Thread A: lock()
Thread B: read  x=5                   read  x=5
Thread A: write x=6                   write x=6
Thread B: write x=6 ← BUG!           unlock()
                             Thread B: lock()    ← waits
                                      read  x=6
                                      write x=7
                                      unlock()
```

**Examples:** [Go sync.Mutex](https://pkg.go.dev/sync#Mutex), [Rust std::sync::Mutex](https://doc.rust-lang.org/std/sync/struct.Mutex.html), [pthreads mutex](https://man7.org/linux/man-pages/man3/pthread_mutex_lock.3p.html)
