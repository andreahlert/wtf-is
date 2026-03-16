# WTF is MQTT?

MQTT is a lightweight publish-subscribe messaging protocol designed for IoT devices and unreliable networks. Clients publish messages to topics, and a broker delivers them to all subscribers of that topic. It has tiny overhead, supports three quality-of-service levels (fire-and-forget, at-least-once, exactly-once), and works on bandwidth-constrained connections.

```
Publisher              Broker              Subscribers
(sensor)                                  (dashboard, logger)

  |-- PUBLISH -------->|                       |
  |   topic: home/temp |-- forward ----------->|  subscriber 1
  |   payload: "22.5"  |-- forward ----------->|  subscriber 2
  |                    |                       |

QoS levels:
  0: At most once   (fire and forget)
  1: At least once   (ACK required, may duplicate)
  2: Exactly once    (4-step handshake)
```

**Examples:** [Mosquitto](https://github.com/eclipse/mosquitto), [EMQX](https://github.com/emqx/emqx), [HiveMQ](https://github.com/hivemq/hivemq-community-edition)
