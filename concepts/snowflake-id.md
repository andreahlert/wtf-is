# WTF is a Snowflake ID?

A Snowflake ID is a 64-bit unique identifier invented by Twitter that packs a timestamp, machine ID, and sequence number into a single integer. IDs are roughly time-sorted, fit in a standard 64-bit integer (unlike 128-bit UUIDs), and can be generated independently on each machine without coordination.

```
  64 bits total:
  ┌─────────────────┬──────────┬──────────┐
  │ timestamp (41b) │ node (10)│ seq (12) │
  └─────────────────┴──────────┴──────────┘

  41 bits timestamp: ~69 years of milliseconds
  10 bits node ID:   1024 machines
  12 bits sequence:  4096 IDs per ms per machine

  Result: 1541815603606036480
  → sortable, 64-bit integer, no coordination needed
```

**Examples:** [Snowflake (Twitter)](https://github.com/twitter-archive/snowflake), [Sony Sonyflake](https://github.com/sony/sonyflake), [Discord Snowflake](https://discord.com/developers/docs/reference)
