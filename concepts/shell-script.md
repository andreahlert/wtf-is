# WTF is a Shell Script?

A text file containing shell commands that run sequentially, like a batch recipe. Instead of typing commands one by one, you put them in a `.sh` file and execute it.

```
#!/bin/bash

echo "Deploying..."
docker build -t myapp .
docker push myapp:latest
kubectl rollout restart deployment/myapp
echo "Done!"

$ chmod +x deploy.sh
$ ./deploy.sh
```

**Examples:** [pure-bash-bible](https://github.com/dylanaraps/pure-bash-bible), [shellcheck](https://github.com/koalaman/shellcheck), [bash-guide](https://github.com/Idnan/bash-guide)
