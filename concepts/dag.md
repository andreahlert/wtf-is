# WTF is a DAG?

A DAG (Directed Acyclic Graph) is a graph where edges have direction and there are no cycles. You can follow edges forward but never loop back to where you started. DAGs are used to model dependencies, task scheduling, data pipelines, and git commit history.

```
  A ──▶ B ──▶ D ──▶ F
  │           ▲
  └──▶ C ────┘
       │
       └──▶ E ──▶ F

  ✓ Directed: arrows have direction
  ✓ Acyclic: no way to follow arrows and return to start
  Use: task D depends on B and C finishing first
```

**Examples:** [Apache Airflow](https://github.com/apache/airflow), [dbt](https://github.com/dbt-labs/dbt-core), [Git](https://github.com/git/git)
