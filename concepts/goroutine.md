# WTF is a Goroutine?

A goroutine is Go's lightweight concurrency primitive. It's a function that runs concurrently with other goroutines, multiplexed onto OS threads by Go's runtime. Starting one costs about 2KB of stack (vs ~1MB for an OS thread), so you can spin up millions.

```
func main() {
    go fetchURL("https://a.com")   // starts goroutine
    go fetchURL("https://b.com")   // starts another
    go fetchURL("https://c.com")   // and another

    // Go runtime schedules them across OS threads:
    // OS Thread 1: goroutine A, goroutine C
    // OS Thread 2: goroutine B
}
```

**Examples:** [Go](https://github.com/golang/go), [Go Tour concurrency](https://go.dev/tour/concurrency/1), [Go by Example](https://gobyexample.com/goroutines)
