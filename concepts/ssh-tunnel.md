# WTF is an SSH Tunnel?

An encrypted channel created over SSH that forwards traffic from a local port to a remote destination. It lets you securely access services on a private network as if they were running on your machine.

```
Your laptop                Bastion           Private DB
localhost:5432  ========>  jump.example.com  ========>  db:5432
               SSH tunnel                   forwarded

$ ssh -L 5432:db.internal:5432 user@jump.example.com

Now: psql -h localhost -p 5432
     (connects to private DB through the tunnel)
```

**Examples:** [OpenSSH](https://www.openssh.com), [Teleport](https://github.com/gravitational/teleport), [sshuttle](https://github.com/sshuttle/sshuttle)
