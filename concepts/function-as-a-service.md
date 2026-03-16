# WTF is Function as a Service?

A serverless model where you deploy individual functions that execute in response to events. Each function handles one thing (HTTP request, queue message, file upload) and runs only when triggered. The cloud manages everything else.

```
Event              Function           Result
+----------+      +----------+      +--------+
| HTTP POST| ---> | process  | ---> | return |
| S3 upload| ---> | resize   | ---> | save   |
| SQS msg  | ---> | send_email| --> | done   |
+----------+      +----------+      +--------+
                  runs 0-N instances
```

**Examples:** [AWS Lambda](https://aws.amazon.com/lambda/), [Google Cloud Functions](https://cloud.google.com/functions), [OpenFaaS](https://github.com/openfaas/faas)
