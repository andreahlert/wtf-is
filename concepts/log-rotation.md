# WTF is Log Rotation?

Automatically archiving or deleting old log files so they don't fill up your disk. When a log file hits a size limit or age threshold, it gets compressed and renamed (app.log becomes app.log.1.gz), and a fresh file takes its place.

```
  app.log        ← current, being written to
  app.log.1.gz   ← yesterday, compressed
  app.log.2.gz   ← 2 days ago
  app.log.3.gz   ← 3 days ago
  (older ones get deleted)

  Trigger: file > 100MB or age > 7 days
```

**Examples:** [logrotate](https://github.com/logrotate/logrotate), [Winston daily rotate](https://github.com/winstonjs/winston-daily-rotate-file), [Log4j RollingFileAppender](https://github.com/apache/logging-log4j2)
