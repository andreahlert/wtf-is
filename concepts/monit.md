# WTF is Monit?

A lightweight tool that monitors processes, files, directories, and system resources, then takes action when something goes wrong. It can restart crashed services, alert you, or run custom scripts.

```
# /etc/monit/conf.d/web.conf

check process nginx with pidfile /var/run/nginx.pid
  start program = "/bin/systemctl start nginx"
  stop program  = "/bin/systemctl stop nginx"
  if cpu > 80% for 5 cycles then restart
  if memory > 200 MB then alert
  if failed port 80 then restart

Monit checks every 30 seconds by default.
```

**Examples:** [Monit](https://mmonit.com/monit/), [Monit Source](https://bitbucket.org/tildeslash/monit/src/master/), [M/Monit](https://mmonit.com/)
