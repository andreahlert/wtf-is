# WTF is Bloom Filter?

A space-efficient data structure that tells you "definitely not in the set" or "probably in the set." It can have false positives but never false negatives. Uses a bit array and multiple hash functions. Great for avoiding expensive lookups when the answer is usually "no."

```
  Insert "cat":
  hash1("cat")=2  hash2("cat")=5  hash3("cat")=9
  Bit array: [0,0,1,0,0,1,0,0,0,1]

  Check "dog":
  hash1("dog")=1  hash2("dog")=5  hash3("dog")=7
  Bit array: [0,0,1,0,0,1,0,0,0,1]
                ^               ^
             bit 1=0         bit 7=0
           → definitely NOT in set
```

**Examples:** [Google Guava BloomFilter](https://github.com/google/guava), [pybloom](https://github.com/jaybaird/python-bloomfilter), [Redis Bloom](https://github.com/RedisBloom/RedisBloom)
