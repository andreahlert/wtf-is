# WTF is Encoding?

Encoding is a scheme for representing data as bytes. ASCII maps 128 characters to numbers. UTF-8 extends that to every character in every language, using 1-4 bytes per character. Base64 represents binary data as printable text so it can travel through text-only channels like email or JSON.

```
Character "A":
  ASCII:   65          (1 byte)
  UTF-8:   65          (1 byte, same for ASCII chars)

Character "":
  ASCII:   impossible  (not in ASCII)
  UTF-8:   0xC3 0xA9   (2 bytes)

Binary data in text (Base64):
  bytes:   [0x48, 0x65, 0x6C, 0x6C, 0x6F]
  base64:  "SGVsbG8="
```

**Examples:** [Node.js Buffer](https://github.com/nodejs/node), [Python codecs](https://github.com/python/cpython), [base64 spec (RFC 4648)](https://datatracker.ietf.org/doc/html/rfc4648)
