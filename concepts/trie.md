# WTF is a Trie?

A trie (pronounced "try") is a tree where each node represents a single character, and paths from root to leaf spell out complete strings. Looking up a word takes O(length) time regardless of how many words are stored. Tries are used for autocomplete, spell checkers, and IP routing tables.

```
  Words: "cat", "car", "card", "dog"

          (root)
         /      \
        c        d
        |        |
        a        o
       / \       |
      t   r      g
          |
          d
```

**Examples:** [Apache Lucene](https://github.com/apache/lucene), [datrie](https://github.com/pytries/datrie), [trie-rs](https://github.com/laysakura/trie-rs)
