# WTF is Text Classification?

Text classification assigns predefined labels or categories to text. Spam detection, topic tagging, language detection, and sentiment analysis are all text classification tasks. You train a model on labeled examples and it learns to categorize new, unseen text.

```
  Input                          Label
  ┌────────────────────────┐    ┌───────────┐
  │"Buy cheap watches now!"│───►│ spam      │
  │"Meeting at 3pm today"  │───►│ not spam  │
  │"El gato está aquí"     │───►│ Spanish   │
  │"Server CPU at 99%"     │───►│ alert     │
  └────────────────────────┘    └───────────┘
```

**Examples:** [Hugging Face Text Classification](https://huggingface.co/tasks/text-classification), [scikit-learn](https://github.com/scikit-learn/scikit-learn), [FastText](https://github.com/facebookresearch/fastText)
