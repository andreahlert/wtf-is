# WTF is Object Storage?

A flat storage system where files are stored as objects with metadata and a unique key. No folders, no hierarchy. You access them via HTTP (GET/PUT). Scales to petabytes, cheap for storing things you don't need to modify in place.

```
Bucket: my-assets
  +-- key: images/photo.jpg  --> [binary data + metadata]
  +-- key: logs/2024-01.csv  --> [binary data + metadata]
  +-- key: backup.tar.gz     --> [binary data + metadata]

PUT /my-assets/images/photo.jpg  (upload)
GET /my-assets/images/photo.jpg  (download)
```

**Examples:** [AWS S3](https://aws.amazon.com/s3/), [Google Cloud Storage](https://cloud.google.com/storage), [MinIO](https://github.com/minio/minio)
