FROM quay.io/devtron/test:c9aa3731-560-18455

# Set the version of Helm you want to use
ARG HELM_VERSION=3.13.0

# Download and install the specified Helm version
RUN wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    tar -zxvf helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    rm -rf linux-amd64 helm-v${HELM_VERSION}-linux-amd64.tar.gz
