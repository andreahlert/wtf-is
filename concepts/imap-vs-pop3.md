# WTF is IMAP vs POP3?

Both are protocols for retrieving email from a server, but they work differently. IMAP keeps emails on the server and syncs across all your devices. POP3 downloads emails to one device and typically deletes them from the server. Use IMAP if you check email on multiple devices. POP3 is simpler but stuck in the single-device era.

```
IMAP (synced):                   POP3 (download):

  Server                           Server
  ┌──────────┐                     ┌──────────┐
  │ inbox    │                     │ inbox    │
  │ sent     │                     │          │
  │ drafts   │                     └──────────┘
  └──────────┘                          |
   /    |    \                      download + delete
  v     v     v                         |
Phone  Laptop  Tablet                   v
(all see same state)               One device
                                   (emails gone from server)

IMAP:                            POP3:
  ✓ Multi-device sync              ✓ Simple
  ✓ Server-side folders            ✓ Works offline
  ✓ Search on server               ✗ Single device
  ✗ Uses more server storage       ✗ No sync
```

**Examples:** [Dovecot](https://github.com/dovecot/core), [Cyrus IMAP](https://github.com/cyrusimap/cyrus-imapd), [Roundcube](https://github.com/roundcube/roundcubemail)
