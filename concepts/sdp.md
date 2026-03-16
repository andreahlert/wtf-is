# WTF is SDP?

SDP (Session Description Protocol) is a text format that describes multimedia sessions. In WebRTC, peers exchange SDP messages (offer and answer) to agree on codecs, media types, encryption, and network details. It's not a protocol for transporting data; it's just a format for negotiating what the connection will look like.

```
WebRTC signaling:
  Peer A creates SDP offer --> sends via signaling --> Peer B
  Peer B creates SDP answer --> sends via signaling --> Peer A

SDP offer (simplified):
  v=0
  o=- 123456 IN IP4 0.0.0.0
  m=audio 9 UDP/TLS/RTP/SAVPF 111
  a=rtpmap:111 opus/48000/2       (audio codec: Opus)
  m=video 9 UDP/TLS/RTP/SAVPF 96
  a=rtpmap:96 VP8/90000           (video codec: VP8)
  a=ice-ufrag:abcd                (ICE credentials)
  a=fingerprint:sha-256 AA:BB:... (DTLS cert fingerprint)

Both peers agree on the intersection of capabilities.
```

**Examples:** [Pion SDP](https://github.com/pion/sdp), [mediasoup](https://github.com/versatica/mediasoup), [Janus](https://github.com/meetecho/janus-gateway)
