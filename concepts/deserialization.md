# WTF is Insecure Deserialization?

Insecure Deserialization happens when an app takes serialized data (a binary or text blob representing an object) from an untrusted source and converts it back into a live object without validation. Attackers craft malicious serialized payloads that, when deserialized, execute arbitrary code, escalate privileges, or tamper with application logic.

```
Normal flow:
  Object → serialize → bytes → deserialize → Object ✓

Attack:
  Attacker crafts malicious bytes
       │
       ▼
  deserialize(malicious_bytes)
       │
       ▼
  Object created with attacker-controlled
  properties → triggers code execution

Fix: never deserialize untrusted data
     use safe formats like JSON instead of native serialization
```

**Examples:** [ysoserial](https://github.com/frohoff/ysoserial), [pyyaml safe_load](https://github.com/yaml/pyyaml), [Jackson Databind](https://github.com/FasterXML/jackson-databind)
