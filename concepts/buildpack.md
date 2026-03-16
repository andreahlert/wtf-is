# WTF is a Buildpack?

A tool that detects your app's language, installs dependencies, and creates a container image without you writing a Dockerfile. It inspects your code (finds package.json, requirements.txt, go.mod) and builds an optimized image automatically.

```
Your code:
  app.py
  requirements.txt

Buildpack detects:
  "This is Python" --> install python + pip
  "Has requirements.txt" --> pip install
  --> create OCI image

$ pack build myapp
  ===> DETECTING (python)
  ===> BUILDING
  ===> EXPORTING myapp:latest
```

**Examples:** [Cloud Native Buildpacks](https://github.com/buildpacks), [Paketo](https://github.com/paketo-buildpacks), [Heroku Buildpacks](https://devcenter.heroku.com/articles/buildpacks)
