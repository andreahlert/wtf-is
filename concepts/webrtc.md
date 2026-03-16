# WTF is WebRTC?

WebRTC (Web Real-Time Communication) enables peer-to-peer audio, video, and data streaming directly between browsers without plugins or servers in the middle. A signaling server helps peers find each other and negotiate connection details, but the actual media flows directly between them. It handles NAT traversal, encryption, and codec negotiation automatically.

```
Signaling (setup):
  Browser A --> Signaling Server --> Browser B
  (exchange SDP offers/answers and ICE candidates)

Media (after setup):
  Browser A <======= peer-to-peer =======> Browser B
  (audio/video/data flows directly, no server)

Connection flow:
  1. A creates offer (SDP)
  2. A sends offer to B via signaling server
  3. B creates answer (SDP)
  4. Both gather ICE candidates (network paths)
  5. ICE finds the best path (STUN/TURN)
  6. DTLS handshake (encryption)
  7. Media flows peer-to-peer
```

**Examples:** [Pion (Go)](https://github.com/pion/webrtc), [mediasoup](https://github.com/versatica/mediasoup), [Janus](https://github.com/meetecho/janus-gateway)
