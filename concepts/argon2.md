# WTF is Argon2?

Argon2 is the winner of the Password Hashing Competition (2015) and the current best practice for hashing passwords. Unlike bcrypt which only controls CPU cost, Argon2 also controls memory usage, making it resistant to GPU and ASIC attacks. It comes in three variants: Argon2d (data-dependent), Argon2i (data-independent), and Argon2id (recommended hybrid).

```
argon2id("password", salt, time=3, memory=64MB, parallelism=4)
         │
         ▼
  $argon2id$v=19$m=65536,t=3,p=4$c2FsdA$hash...

  Parameters:
    time        CPU iterations
    memory      RAM required per hash (e.g. 64MB)
    parallelism threads used

  Why memory matters:
    GPU has 1000s of cores but limited memory per core
    Requiring 64MB/hash means GPU can't parallelize
    bcrypt: GPU can try millions → Argon2: GPU is crippled
```

**Examples:** [argon2 (Node.js)](https://github.com/ranisalt/node-argon2), [argon2-cffi (Python)](https://github.com/hynek/argon2-cffi), [phc-winner-argon2](https://github.com/P-H-C/phc-winner-argon2)
