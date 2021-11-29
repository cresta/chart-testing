# chart-testing
Fork of quay.io/helmpack/chart-testing with the helm s3 plugin installed

See https://github.com/helm/chart-testing for more information

# Usage

```
docker run -v "$(pwd):/ws" -w /ws ghcr.io/cresta/chart-testing:v3.4.0-a ct lint --all --chart-dirs . --debug .
```
