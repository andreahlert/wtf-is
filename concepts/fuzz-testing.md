# WTF is Fuzz Testing?

A testing technique where you throw random, malformed, or unexpected input at your program to find crashes and security vulnerabilities. The fuzzer generates thousands of weird inputs automatically. If your parser crashes on input #4,721, you found a bug no human would have thought to test.

```
  Fuzzer
    │
    ├──▶ "asd#$@!x00"  → crash?
    ├──▶ ""             → crash?
    ├──▶ "AAAA...9999"  → crash?
    ├──▶ "\x00\xff"     → crash? ← BUG FOUND
    └──▶ ... thousands more
```

**Examples:** [AFL++](https://github.com/AFLplusplus/AFLplusplus), [go-fuzz](https://github.com/dvyukov/go-fuzz), [OSS-Fuzz](https://github.com/google/oss-fuzz)
