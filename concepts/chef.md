# WTF is Chef?

A configuration management tool where you write "recipes" in Ruby to describe how servers should be configured. An agent on each node pulls cookbooks from a Chef server and converges the system to the desired state.

```
Chef Server                    Managed Nodes
+------------+                 +--------+
| cookbooks  | <-- pull        | client |
| (recipes)  |    converge     +--------+
+------------+                 +--------+
                               | client |
                               +--------+

# recipe
package 'nginx'
service 'nginx' do
  action [:enable, :start]
end
```

**Examples:** [Chef Infra](https://github.com/chef/chef), [Chef Supermarket](https://supermarket.chef.io), [Cinc](https://github.com/cinc-project/auditor)
