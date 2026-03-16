# WTF is rsync?

rsync is a tool that synchronizes files between two locations by only transferring the differences. Instead of copying entire files, it uses a rolling checksum algorithm to detect which parts changed and sends only those chunks. It works locally or over SSH and handles large directory trees efficiently.

```
First sync (full transfer):
  rsync -avz ./project/ server:/backup/project/
  [==================================] 100%  (1 GB transferred)

Second sync (only changes):
  rsync -avz ./project/ server:/backup/project/
  Modified: src/app.py (4 KB changed out of 50 KB)
  New file: config.yml
  [==================================] 100%  (8 KB transferred)

How it detects changes:
  File A (local):   [block1][block2*][block3][block4*]
  File A (remote):  [block1][block2 ][block3][block4 ]
                             changed           changed
  Only block2 and block4 are transferred.
```

**Examples:** [rsync](https://github.com/RsyncProject/rsync), [rclone](https://github.com/rclone/rclone), [lsyncd](https://github.com/lsyncd/lsyncd)
