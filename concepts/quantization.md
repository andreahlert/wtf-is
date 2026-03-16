# WTF is Quantization (ML)?

Quantization reduces model size by using lower-precision numbers for weights. Instead of 32-bit or 16-bit floats, you use 8-bit or 4-bit integers. The model gets smaller and faster with only a small accuracy loss. This is how you run a 70B model on a laptop.

```
  32-bit float    →   8-bit int     →   4-bit int
  3.14159265...       3              1-2 bits per weight
  ┌──────────┐       ┌─────┐        ┌───┐
  │ 32 bits  │       │8 bit│        │4b │
  │ per param│       │ 4x  │        │8x │
  │          │       │small│        │sm │
  └──────────┘       └─────┘        └───┘
  Model: 140GB       Model: 35GB    Model: 18GB
```

**Examples:** [llama.cpp](https://github.com/ggerganov/llama.cpp), [bitsandbytes](https://github.com/TimDettmers/bitsandbytes), [GPTQ](https://github.com/IST-DASLab/gptq)
