FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

# renovate: datasource=github-releases depName=kubernetes/kubernetes extractVersion=^v(?<version>.*)$
ARG KUBECTL_VERSION=1.21.1

RUN wget -q -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod 0755 /usr/local/bin/kubectl