# WTF is Serverless?

A cloud execution model where the provider manages the servers entirely. You write code, deploy it, and only pay when it runs. No provisioning, no patching, no capacity planning. Scales to zero when idle, scales up automatically under load.

```
Request comes in:
  Cloud spins up your function
  Function runs
  Cloud tears it down

No request?
  Nothing runs. $0.

You manage:    [ code ]
Cloud manages: [ servers, scaling, OS, runtime ]
```

**Examples:** [AWS Lambda](https://aws.amazon.com/lambda/), [Vercel](https://vercel.com), [Knative](https://github.com/knative/serving)
