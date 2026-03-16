# WTF is a Diffusion Model?

A diffusion model learns to generate data by reversing a noise-adding process. During training, it gradually adds noise to real data until it becomes pure static, then learns to reverse each step. At generation time, it starts from random noise and iteratively denoises it into a coherent image (or audio, video, etc.).

```
  Training (add noise):
  [clear image] → [slightly noisy] → [more noisy] → [pure noise]

  Generation (remove noise):
  [pure noise] → [less noisy] → [clearer] → [final image]
       Step T      Step T-1       Step 1      Step 0
```

**Examples:** [Stable Diffusion](https://github.com/CompVis/stable-diffusion), [DALL-E](https://openai.com/dall-e-3), [Diffusers](https://github.com/huggingface/diffusers)
