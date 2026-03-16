# WTF is a GAN?

A GAN (Generative Adversarial Network) trains two networks against each other: a generator that creates fake data and a discriminator that tries to tell real from fake. They compete until the generator produces outputs so convincing the discriminator can't tell the difference. This was the dominant approach for image generation before diffusion models.

```
  ┌───────────┐          ┌───────────────┐
  │ Generator │──fakes──►│ Discriminator │──► "real" or "fake"?
  │ (creates) │          │ (judges)      │
  └─────┬─────┘          └───────┬───────┘
        │                        │
        └── gets better ◄────────┘── feedback
            at faking            gets better
                                 at catching
```

**Examples:** [StyleGAN](https://github.com/NVlabs/stylegan3), [PyTorch GAN](https://github.com/eriklindernoren/PyTorch-GAN), [CycleGAN](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix)
