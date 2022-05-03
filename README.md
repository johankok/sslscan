# sslscan

The container image is pushed to https://quay.io/repository/johankok/sslscan after every commit.

## Usage in a job

```yaml
apiVersion: batch/v1
kind: Job
metadata:
  name: sslscan
spec:
  selector: {}
  template:
    metadata:
      name: sslscan
    spec:
      containers:
        - name: sslscan
          image: 'quay.io/johankok/sslscan:latest'
          args:
          - '--no-colour'
          - 'example.com'
      restartPolicy: Never
```
