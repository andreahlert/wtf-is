# WTF is File Storage?

A shared filesystem that multiple servers can mount and access simultaneously, like a network drive. Supports standard file operations (open, read, write, list directory). Good for shared config, CMS content, or legacy apps that need a real filesystem.

```
+--------+
| Server1| --\
+--------+    \     +---------------+
               +--> | File Storage  |
+--------+    /     | /shared/      |
| Server2| --/      |   config.yaml |
+--------+          |   uploads/    |
                    +---------------+
         All servers see the same files
```

**Examples:** [AWS EFS](https://aws.amazon.com/efs/), [GCP Filestore](https://cloud.google.com/filestore), [Azure Files](https://azure.microsoft.com/en-us/products/storage/files)
