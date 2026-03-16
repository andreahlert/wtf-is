# WTF is an ML Pipeline?

An ML pipeline is an automated workflow that chains together the steps of a machine learning project: data ingestion, preprocessing, feature engineering, training, evaluation, and deployment. Instead of running scripts manually in a notebook, a pipeline makes the whole thing reproducible and triggerable.

```
  ┌──────┐   ┌────────┐   ┌───────┐   ┌───────┐   ┌────────┐
  │ Data │──►│Preproc.│──►│Feature│──►│ Train │──►│Evaluate│──► Deploy
  │Ingest│   │Clean   │   │  Eng. │   │ Model │   │Metrics │
  └──────┘   └────────┘   └───────┘   └───────┘   └────────┘
       Triggered by schedule, new data, or git push
```

**Examples:** [Kubeflow Pipelines](https://github.com/kubeflow/pipelines), [ZenML](https://github.com/zenml-io/zenml), [Metaflow](https://github.com/Netflix/metaflow)
