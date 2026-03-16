# WTF is SIP?

SIP (Session Initiation Protocol) is the signaling protocol used to set up, modify, and tear down voice and video calls over IP. It handles finding the other party, ringing their phone, negotiating codecs (via SDP), and hanging up. The actual audio/video travels over RTP, not SIP. It's the backbone of VoIP phone systems.

```
Caller (Alice)       SIP Server        Callee (Bob)
  |                      |                  |
  |-- INVITE ----------->|-- INVITE ------->|
  |                      |                  |
  |                      |<-- 180 Ringing --|
  |<-- 180 Ringing ------|                  |
  |                      |                  |
  |                      |<-- 200 OK -------|
  |<-- 200 OK -----------|                  |
  |-- ACK -------------->|-- ACK ---------->|
  |                      |                  |
  |<=========== RTP audio/video ===========>|
  |                      |                  |
  |-- BYE -------------->|-- BYE ---------->|
  |<-- 200 OK -----------|                  |
```

**Examples:** [Oructor](https://github.com/kamailio/kamailio), [Asterisk](https://github.com/asterisk/asterisk), [FreeSWITCH](https://github.com/signalwire/freeswitch)
