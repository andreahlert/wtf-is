# WTF is Beam Search?

Beam search is a decoding strategy that keeps track of multiple candidate sequences (beams) at each step instead of just one. At every step, it expands each beam with the top-K next tokens, scores all candidates, and keeps only the best N. It finds better overall sequences than greedy decoding but uses more memory and compute.

```
  Step 1          Step 2              Step 3
  "The" ──► "The cat"  ──────► "The cat sat"    ← beam 1 (best)
        └─► "The dog"  ──────► "The dog ran"    ← beam 2
                       └─────► "The dog sat"    ← beam 3 (dropped)
```

**Examples:** [Hugging Face Transformers](https://github.com/huggingface/transformers), [fairseq](https://github.com/facebookresearch/fairseq), [OpenNMT](https://github.com/OpenNMT/OpenNMT-py)
