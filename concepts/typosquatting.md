# WTF is Typosquatting?

Typosquatting in software is when an attacker publishes a malicious package with a name that looks like a popular one but with a small typo. You type `npm install lodasg` instead of `lodash` and install malware. It works because developers make typos constantly and package registries don't verify intent.

```
Real packages vs typosquats:

  lodash     →  lodasg, l0dash, lodash-utils
  express    →  expresss, expres, xpress
  requests   →  request, requestes, reqeusts

  $ npm install expresss
       │
       ▼
  Malicious package runs postinstall script
  Steals env vars, tokens, credentials
```

**Examples:** [Socket](https://github.com/SocketDev/socket), [npm audit](https://docs.npmjs.com/cli/v10/commands/npm-audit), [pip-audit](https://github.com/pypa/pip-audit)
