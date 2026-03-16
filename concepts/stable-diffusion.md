# WTF is Stable Diffusion?

Stable Diffusion is an open-source text-to-image diffusion model that generates images from text prompts. The key innovation is doing the diffusion process in a compressed latent space (not pixel space), which makes it fast enough to run on consumer GPUs. You type a description and it produces an image.

```
  "A cat wearing sunglasses on a beach"
          │
          ▼
  ┌──────────────┐    ┌──────────────┐    ┌──────────┐
  │ Text Encoder │──►│ Latent Space  │──►│ VAE      │──► Image
  │ (CLIP)       │    │ Diffusion     │    │ Decoder  │
  └──────────────┘    │ (denoise x50) │    └──────────┘
                      └──────────────┘
```

**Examples:** [Stable Diffusion](https://github.com/CompVis/stable-diffusion), [Diffusers](https://github.com/huggingface/diffusers), [ComfyUI](https://github.com/comfyanonymous/ComfyUI)
