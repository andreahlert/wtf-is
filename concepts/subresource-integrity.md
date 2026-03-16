# WTF is Subresource Integrity?

Subresource Integrity (SRI) lets browsers verify that files fetched from CDNs haven't been tampered with. You add a hash of the expected file content to your script or link tag. If the CDN is compromised and serves modified JavaScript, the browser checks the hash, sees a mismatch, and blocks execution.

```
<script src="https://cdn.example.com/lib.js"
  integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/ux..."
  crossorigin="anonymous">
</script>

Flow:
  Browser downloads lib.js from CDN
       │
       ▼
  Computes SHA-384 hash of downloaded file
       │
       ▼
  hash matches integrity attribute?
    Yes → execute script ✓
    No  → block script, show error ✗

  CDN compromised? Attacker modifies lib.js?
  Hash won't match → script blocked.
```

**Examples:** [SRI Hash Generator](https://www.srihash.org/), [webpack-subresource-integrity](https://github.com/waysact/webpack-subresource-integrity), [MDN SRI docs](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity)
