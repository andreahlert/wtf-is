# WTF is a Word Embedding?

A word embedding is a dense vector representation of a word where similar words end up close together in vector space. Instead of treating words as arbitrary IDs, embeddings capture meaning: "king" and "queen" are nearby, "king" and "bicycle" are far apart. This lets models understand semantic relationships.

```
  Word         Vector (simplified to 3D)
  "king"    →  [0.9,  0.1,  0.8]
  "queen"   →  [0.8,  0.2,  0.9]   ← close to king
  "bicycle" →  [0.1,  0.9,  0.1]   ← far from king

  Classic result:
  king - man + woman ≈ queen
```

**Examples:** [Word2Vec (Gensim)](https://github.com/piskvorky/gensim), [GloVe](https://github.com/stanfordnlp/GloVe), [FastText](https://github.com/facebookresearch/fastText)
