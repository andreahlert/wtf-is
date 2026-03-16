# WTF is SMTP?

SMTP (Simple Mail Transfer Protocol) is the protocol used to send email between servers. Your email client uses SMTP to send a message to your mail server, which then relays it to the recipient's mail server (found via MX records). SMTP only handles sending; retrieving emails is done with IMAP or POP3.

```
You (sender)         Your Mail Server      Recipient's Server
  |                       |                      |
  |-- SMTP: send to ----->|                      |
  |   bob@example.com     |                      |
  |                       |-- DNS MX lookup      |
  |                       |   example.com        |
  |                       |                      |
  |                       |-- SMTP: MAIL FROM -->|
  |                       |-- SMTP: RCPT TO ---->|
  |                       |-- SMTP: DATA ------->|
  |                       |                      |
  |                       |<-- 250 OK -----------|

SMTP conversation:
  EHLO myserver.com
  MAIL FROM:<alice@myserver.com>
  RCPT TO:<bob@example.com>
  DATA
  Subject: Hello
  ...
  .
```

**Examples:** [Postfix](https://github.com/vdukhovni/postfix), [Haraka](https://github.com/haraka/Haraka), [MailHog](https://github.com/mailhog/MailHog)
