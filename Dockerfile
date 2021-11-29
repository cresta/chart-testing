ARG CT_VERSION=v3.4.0
FROM quay.io/helmpack/chart-testing:$CT_VERSION

ARG HELM_S3_VERSION 0.10.0
RUN helm plugin install https://github.com/hypnoglow/helm-s3.git --version "$HELM_S3_VERSION"

