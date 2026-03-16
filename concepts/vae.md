# WTF is a VAE?

A VAE (Variational Autoencoder) learns to compress data into a small latent space and reconstruct it back. The encoder maps input to a distribution in latent space, and the decoder generates data from points sampled in that space. This lets you generate new data by sampling random points from the latent space.

```
  Input image                            Reconstructed image
  ┌─────┐     ┌─────────┐   ┌─────────┐     ┌─────┐
  │     │────►│ Encoder │──►│ Latent  │────►│Decoder│────►│     │
  │  :) │     │ (compress)│  │ z~N(μ,σ)│     │(expand)│    │  :) │
  └─────┘     └─────────┘   └────┬────┘     └───────┘    └─────┘
                                  │
                            sample random z
                            to generate new faces
```

**Examples:** [PyTorch VAE](https://github.com/AntixK/PyTorch-VAE), [Stable Diffusion VAE](https://github.com/CompVis/stable-diffusion), [TensorFlow Probability](https://github.com/tensorflow/probability)
