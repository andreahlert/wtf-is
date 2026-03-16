# WTF is FTP vs SFTP?

FTP (File Transfer Protocol) transfers files but sends everything in plain text, including passwords. SFTP (SSH File Transfer Protocol) does the same thing but over an encrypted SSH connection. Despite the similar names, SFTP is not FTP-over-SSL (that's FTPS). SFTP uses a single port (22), while FTP needs multiple ports and is a nightmare with firewalls.

```
FTP:                              SFTP:
  Port 21 (control)                 Port 22 (SSH)
  Port 20 (data, or random)        Single connection
  Plain text                        Encrypted
  Passwords visible                 Passwords encrypted

FTP:
  Client --port 21--> Server (commands, plain text)
  Client <-port 20--- Server (data, plain text)
  Firewall headache (passive/active modes)

SFTP:
  Client --port 22--> Server (everything encrypted, single port)

  FTP:   credentials + data = visible to anyone sniffing
  SFTP:  credentials + data = encrypted via SSH
```

**Examples:** [OpenSSH sftp](https://github.com/openssh/openssh-portable), [vsftpd](https://security.appspot.com/vsftpd.html), [FileZilla](https://filezilla-project.org/)
