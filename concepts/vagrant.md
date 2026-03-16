# WTF is Vagrant?

A tool to create and manage reproducible development environments using virtual machines. You describe your VM in a Vagrantfile, run `vagrant up`, and get a consistent environment that matches production. Every developer gets the same setup.

```
Vagrantfile
+---------------------+
| box: ubuntu/jammy   |     vagrant up
| memory: 2048        |  ===============>  VM running
| provision: ansible  |                    SSH ready
+---------------------+

$ vagrant up       # create and start VM
$ vagrant ssh      # connect to it
$ vagrant destroy  # tear it down
```

**Examples:** [Vagrant](https://github.com/hashicorp/vagrant), [Vagrant Cloud](https://app.vagrantup.com/boxes/search), [Bento](https://github.com/chef/bento)
