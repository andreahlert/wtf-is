# WTF is Model Serving?

Model serving is running a trained ML model behind an API so applications can send data and get predictions back. It handles loading the model into memory, batching requests, scaling under load, and managing model versions. It's the bridge between "I trained a model" and "users can actually use it."

```
  Client Request                    Model Server
  ┌──────────┐    HTTP/gRPC    ┌─────────────────────┐
  │ {"text": │ ──────────────► │ Load balancer        │
  │  "hello"}│                 │   ├─ Model v2 (GPU1) │
  └──────────┘                 │   ├─ Model v2 (GPU2) │
       ▲                       │   └─ Model v1 (GPU3) │
       │      {"label":"hi"}   └──────────┬──────────┘
       └───────────────────────────────────┘
```

**Examples:** [vLLM](https://github.com/vllm-project/vllm), [Triton Inference Server](https://github.com/triton-inference-server/server), [TorchServe](https://github.com/pytorch/serve)
