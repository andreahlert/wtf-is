# WTF is a Pipe?

The `|` operator that connects one command's stdout to the next command's stdin. It lets you chain small tools together to build powerful data processing pipelines.

```
$ cat access.log | grep "POST" | awk '{print $1}' | sort | uniq -c | sort -rn

         |            |              |               |         |          |
     read file   filter POST    extract IPs     sort them   count    sort by
                  requests                                 unique    frequency

stdout ----pipe----> stdin ----pipe----> stdin ----pipe----> ...
```

**Examples:** [GNU Coreutils](https://www.gnu.org/software/coreutils/), [fzf](https://github.com/junegunn/fzf), [jq](https://github.com/jqlang/jq)
