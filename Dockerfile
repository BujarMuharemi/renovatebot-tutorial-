FROM alpine:3.24.4@sha256:93b41ef40b1677fce8fcc64ff4af09daddfacf5040afde618bc46c1e2d1cc7d4

# renovate: datasource=github-releases depName=kubernetes/kubernetes extractVersion=^v(?<version>.*)$
ARG KUBECTL_VERSION=1.21.1

RUN wget -q -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod 0755 /usr/local/bin/kubectl