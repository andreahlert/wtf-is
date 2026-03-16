# WTF is Word2Vec?

Word2Vec is one of the first popular algorithms for learning word embeddings. It trains a shallow neural network on a large text corpus using one of two approaches: predict the context words from a target word (skip-gram), or predict the target word from context (CBOW). It proved that simple neural nets could learn rich semantic relationships between words.

```
  Skip-gram: given "cat", predict surrounding words
  "the [cat] sat on"
        │
        ▼
  ┌──────────┐
  │ Word2Vec │──► P("the")=0.3, P("sat")=0.4, P("on")=0.2
  └──────────┘

  Result: words in similar contexts get similar vectors
  cat ≈ dog ≈ kitten    (all appear near "pet", "fur", "cute")
```

**Examples:** [Gensim](https://github.com/piskvorky/gensim), [Original Word2Vec](https://code.google.com/archive/p/word2vec/), [FastText](https://github.com/facebookresearch/fastText)
