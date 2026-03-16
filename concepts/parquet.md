# WTF is Parquet?

Parquet is a columnar file format for storing tabular data. Instead of writing data row by row, it groups values by column, which means analytical queries that only need a few columns can skip reading everything else. It also compresses extremely well because similar values (same column) are stored together.

```
  CSV (row-oriented):           Parquet (column-oriented):
  name,age,city                 name: [Alice,Bob,Carol]
  Alice,30,NYC                  age:  [30,25,28]
  Bob,25,LA                     city: [NYC,LA,SF]
  Carol,28,SF

  SELECT AVG(age) FROM table;
  CSV: reads all 3 columns      Parquet: reads only "age" column
  Size: 100MB                   Size: ~20MB (compressed)
```

**Examples:** [Apache Parquet](https://github.com/apache/parquet-format), [parquet-rs](https://github.com/apache/arrow-rs), [PyArrow](https://github.com/apache/arrow)
