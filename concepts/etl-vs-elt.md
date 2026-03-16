# WTF is ETL vs ELT?

Both are about moving data from source systems to a destination. The difference is when you transform it.

**ETL (Extract, Transform, Load):** pull data out, clean/transform it in a pipeline, then load the result into the destination. Traditional approach.

**ELT (Extract, Load, Transform):** pull data out, dump it raw into the destination, then transform it there using the destination's compute power. Modern approach, works well with powerful cloud warehouses.

```
ETL:
  [Source] → Extract → Transform → Load → [Warehouse]
                         │
                    pipeline does
                    the heavy lifting

ELT:
  [Source] → Extract → Load → [Warehouse] → Transform
                                    │
                              warehouse does
                              the heavy lifting (SQL, dbt)
```

**Examples:** ETL: [Apache Airflow](https://github.com/apache/airflow), [Informatica](https://www.informatica.com/), [Talend](https://www.talend.com/). ELT: [dbt](https://github.com/dbt-labs/dbt-core), [Fivetran](https://www.fivetran.com/) + [Snowflake](https://www.snowflake.com/), [Airbyte](https://github.com/airbytehq/airbyte)
