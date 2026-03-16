# WTF is SMB?

SMB (Server Message Block) is a network file sharing protocol used primarily in Windows environments. It lets you access shared folders, printers, and other resources over a network. When you map a network drive in Windows (like \\server\share), that's SMB. Samba is the open-source implementation that lets Linux servers speak SMB to Windows clients.

```
Windows client:
  \\fileserver\documents\report.docx
  (mapped as Z: drive)

SMB Server
  ┌─────────────────────────┐
  │ Share: \\server\docs    │
  │ Share: \\server\photos  │
  │ Printer: \\server\hp    │
  └─────────────────────────┘
      |          |         |
   Windows    macOS     Linux
   (native)   (native)  (Samba/cifs)

Versions:
  SMB1: ancient, insecure (WannaCry exploit), disable it
  SMB2: Vista+, better performance
  SMB3: encryption, multichannel, current standard
```

**Examples:** [Samba](https://github.com/samba-team/samba), [ksmbd (Linux kernel SMB)](https://github.com/cifsd-team/ksmbd), [impacket](https://github.com/fortra/impacket)
