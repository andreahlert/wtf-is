# WTF is a Channel?

A channel is a typed pipe that goroutines use to send and receive values safely. Instead of sharing memory with locks, goroutines communicate by passing data through channels. "Don't communicate by sharing memory; share memory by communicating."

```
ch := make(chan string)

// Goroutine A (sender)
go func() {
    ch <- "hello"        // send to channel (blocks until received)
}()

// Goroutine B (receiver)
msg := <-ch              // receive from channel (blocks until sent)
fmt.Println(msg)         // "hello"

// Buffered channel: won't block until buffer is full
ch := make(chan int, 3)  // buffer size 3
```

**Examples:** [Go channels](https://go.dev/tour/concurrency/2), [Rust crossbeam channels](https://github.com/crossbeam-rs/crossbeam), [Kotlin channels](https://github.com/Kotlin/kotlinx.coroutines)
