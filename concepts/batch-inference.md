# WTF is Batch Inference?

Batch inference is running a model on a large set of inputs all at once instead of one at a time. You collect many requests, process them together as a batch, and return all results. It maximizes GPU utilization and throughput, but each individual request waits longer because it has to wait for the batch to fill.

```
  Real-time inference            Batch inference
  ┌───┐ → result                ┌───┐
  ┌───┐ → result                ┌───┐  → batch them → ┌───────┐ → all results
  ┌───┐ → result                ┌───┐                  │  GPU  │
  (one at a time)               ┌───┐                  │ batch │
                                (collect, then run)    └───────┘
```

**Examples:** [vLLM](https://github.com/vllm-project/vllm), [Ray Batch Inference](https://github.com/ray-project/ray), [Triton Inference Server](https://github.com/triton-inference-server/server)
