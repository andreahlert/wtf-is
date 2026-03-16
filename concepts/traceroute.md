# WTF is Traceroute?

Traceroute shows the path packets take from your machine to a destination by sending packets with increasing TTL (Time to Live) values. Each router along the way decrements the TTL by one. When it hits zero, that router sends back an ICMP "time exceeded" message, revealing its address. This maps out every hop between you and the target.

```
$ traceroute example.com

You ---> Router1 ---> Router2 ---> Router3 ---> example.com

TTL=1:  Router1 replies "time exceeded"     12ms
TTL=2:  Router2 replies "time exceeded"     25ms
TTL=3:  Router3 replies "time exceeded"     38ms
TTL=4:  example.com replies "port unreach"  45ms

Output:
1  192.168.1.1     12ms
2  10.0.0.1        25ms
3  72.14.215.1     38ms
4  93.184.216.34   45ms
```

**Examples:** [mtr](https://github.com/traviscross/mtr), [trippy](https://github.com/fujiapple852/trippy), [dublin-traceroute](https://github.com/insomniacslk/dublin-traceroute)
