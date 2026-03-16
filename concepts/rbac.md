# WTF is RBAC?

Role-Based Access Control. Instead of assigning permissions directly to each user, you create roles (like "admin", "editor", "viewer") and assign permissions to roles. Then you assign roles to users. When someone changes teams, you swap their role instead of editing 50 individual permissions.

```
Without RBAC (per-user permissions):
  Alice: read, write, delete, manage_users
  Bob:   read, write
  Carol: read
  → 50 users = 50 permission sets to maintain

With RBAC:
  Roles:
    admin:  read, write, delete, manage_users
    editor: read, write
    viewer: read

  Users:
    Alice → admin
    Bob   → editor
    Carol → viewer
  → change Carol to editor? one assignment, done
```

**Examples:** [AWS IAM](https://aws.amazon.com/iam/), [Kubernetes RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/), [GitHub org roles](https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles), [PostgreSQL roles](https://www.postgresql.org/docs/current/user-manag.html)
