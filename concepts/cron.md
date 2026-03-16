# WTF is Cron?

A Unix scheduler that runs commands at specified times. You define schedules in a crontab using a five-field time format: minute, hour, day-of-month, month, day-of-week.

```
# crontab -e

# min hour dom mon dow  command
  0   9    *   *   1-5  /usr/bin/backup.sh     # weekdays at 9am
  */5 *    *   *   *    /usr/bin/health-check   # every 5 minutes
  0   0    1   *   *    /usr/bin/monthly-report  # 1st of each month

Field:   min   hour   day   month   weekday
Range:   0-59  0-23   1-31  1-12    0-7 (0,7=Sun)
```

**Examples:** [crontab.guru](https://crontab.guru/), [supercronic](https://github.com/aptible/supercronic), [go-cron](https://github.com/robfig/cron)
