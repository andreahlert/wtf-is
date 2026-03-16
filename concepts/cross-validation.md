# WTF is Cross-Validation?

Cross-validation splits your data into K folds, trains K separate models each using a different fold as the test set, and averages the results. This gives a more reliable estimate of model performance than a single train/test split, especially when you don't have much data.

```
  5-Fold Cross-Validation:

  Fold 1: [TEST] [train] [train] [train] [train] → acc: 92%
  Fold 2: [train] [TEST] [train] [train] [train] → acc: 89%
  Fold 3: [train] [train] [TEST] [train] [train] → acc: 91%
  Fold 4: [train] [train] [train] [TEST] [train] → acc: 93%
  Fold 5: [train] [train] [train] [train] [TEST] → acc: 90%
                                          Average → acc: 91%
```

**Examples:** [scikit-learn](https://github.com/scikit-learn/scikit-learn), [PyTorch Lightning](https://github.com/Lightning-AI/pytorch-lightning), [XGBoost](https://github.com/dmlc/xgboost)
