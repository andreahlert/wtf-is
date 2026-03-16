# WTF is an LSTM?

LSTM (Long Short-Term Memory) is an improved RNN that can remember information over long sequences. It uses gates (forget, input, output) to control what information to keep, add, or discard from its memory cell. This solved the vanishing gradient problem that made basic RNNs forget early inputs. Largely replaced by transformers now.

```
  ┌──────────────────────────────────┐
  │            LSTM Cell             │
  │                                  │
  │  ┌────────┐ ┌────────┐ ┌──────┐ │
  │  │ Forget │ │ Input  │ │Output│ │
  │  │  Gate  │ │  Gate  │ │ Gate │ │
  │  └───┬────┘ └───┬────┘ └──┬───┘ │
  │      │          │         │     │
  │      ▼          ▼         ▼     │
  │  [Cell State ─────────────────] │ ← long-term memory
  │  [Hidden State ───────────────] │ ← short-term memory
  └──────────────────────────────────┘
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [Keras](https://github.com/keras-team/keras)
