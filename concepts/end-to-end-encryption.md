# WTF is End-to-End Encryption?

End-to-End Encryption (E2EE) means only the sender and recipient can read the data. Not even the server that relays the messages can decrypt them. The keys live on the users' devices, so a compromised server, a subpoena to the service provider, or a rogue employee all see nothing but encrypted blobs.

```
Regular encryption:
  Alice ──encrypted──▶ Server ──encrypted──▶ Bob
                         │
                    Server CAN read
                    the message

End-to-end encryption:
  Alice ──encrypted──▶ Server ──encrypted──▶ Bob
                         │
                    Server CANNOT read
                    (no decryption key)

  Only Alice and Bob have the keys.
```

**Examples:** [Signal Protocol](https://github.com/nicola/libsignal-protocol-javascript), [Matrix/Element](https://github.com/matrix-org/matrix-spec), [age](https://github.com/FiloSottile/age)
