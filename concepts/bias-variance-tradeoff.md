# WTF is the Bias-Variance Tradeoff?

The bias-variance tradeoff is the tension between two sources of error. High bias means the model is too simple and misses patterns (underfitting). High variance means the model is too sensitive to training data and doesn't generalize (overfitting). The sweet spot is somewhere in between.

```
  High Bias          Balanced           High Variance
  (underfit)         (just right)       (overfit)
  ┌──────────┐      ┌──────────┐       ┌──────────┐
  │  ──────  │      │  ╭────╮  │       │╭╮╭─╮╭╮╭╮│
  │ ·· ·· ·· │      │ ·╰·  ·╯· │       │╰╯╰·╯╰╯╰╯│
  │          │      │          │       │          │
  └──────────┘      └──────────┘       └──────────┘
  Error: bias       Error: low         Error: variance
```

**Examples:** [scikit-learn](https://github.com/scikit-learn/scikit-learn), [MLxtend](https://github.com/rasbt/mlxtend), [XGBoost](https://github.com/dmlc/xgboost)
