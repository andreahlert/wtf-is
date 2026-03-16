# WTF is Sentiment Analysis?

Sentiment analysis determines whether a piece of text expresses a positive, negative, or neutral opinion. It's used to analyze product reviews, social media posts, customer feedback, and more. Modern approaches use pre-trained language models fine-tuned on labeled sentiment data.

```
  Input                              Output
  ┌─────────────────────────────┐   ┌──────────────┐
  │"This product is amazing!"   │──►│ Positive 0.95│
  │"Worst purchase ever."       │──►│ Negative 0.92│
  │"The package arrived today." │──►│ Neutral  0.88│
  └─────────────────────────────┘   └──────────────┘
```

**Examples:** [Hugging Face Sentiment](https://huggingface.co/tasks/text-classification), [VADER](https://github.com/cjhutto/vaderSentiment), [TextBlob](https://github.com/sloria/TextBlob)
