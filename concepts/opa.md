# WTF is OPA?

Open Policy Agent. A general-purpose policy engine that evaluates JSON input against policies written in Rego (its query language). Used to enforce rules on Kubernetes admissions, API authorization, Terraform plans, and more.

```
Input (JSON)          Policy (Rego)              Decision
+-------------+      +--------------------+     +--------+
| {            |      | deny[msg] {        |     |        |
|  "user":     | ---> |  input.role        | --> | DENY   |
|   "intern",  |      |    != "admin"      |     |        |
|  "action":   |      |  input.action      |     +--------+
|   "delete"   |      |    == "delete"     |
| }            |      |  msg := "no perms" |
+-------------+      +--------------------+
```

**Examples:** [OPA](https://github.com/open-policy-agent/opa), [Gatekeeper](https://github.com/open-policy-agent/gatekeeper), [OPA Playground](https://play.openpolicyagent.org/)
