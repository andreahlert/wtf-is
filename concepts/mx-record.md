# WTF is MX Record?

An MX (Mail Exchange) record tells the world which mail server handles email for your domain. When someone sends an email to you@example.com, the sender's mail server looks up example.com's MX records to find where to deliver it. MX records have a priority number, so you can set up backup mail servers with higher values.

```
$ dig example.com MX

example.com  MX  10  mail1.example.com
example.com  MX  20  mail2.example.com

Sending email to user@example.com:

Sender's server:
  1. Look up MX for example.com
  2. Try mail1 (priority 10, lowest = preferred)
  3. If mail1 is down, try mail2 (priority 20)

  Sender --> mail1.example.com --> inbox
              (down? try next)
         --> mail2.example.com --> inbox
```

**Examples:** [Postfix](https://github.com/vdukhovni/postfix), [Haraka](https://github.com/haraka/Haraka), [dnscontrol](https://github.com/StackExchange/dnscontrol)
