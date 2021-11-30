ARG CT_VERSION=v3.4.0
FROM quay.io/helmpack/chart-testing:$CT_VERSION

LABEL org.opencontainers.image.source https://github.com/cresta/chart-testing

ARG HELM_S3_VERSION 0.10.0
RUN helm plugin install https://github.com/hypnoglow/helm-s3.git --version "$HELM_S3_VERSION"
RUN curl -L -o /tmp/kubeconform.gz "https://github.com/yannh/kubeconform/releases/download/v0.4.12/kubeconform-linux-amd64.tar.gz" && \
	tar -C /tmp -zxvf /tmp/kubeconform.gz && mv /tmp/kubeconform /bin/kubeconform
RUN apk update
RUN apk add aws-cli
