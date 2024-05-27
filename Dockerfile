FROM alpine:3.19.1@sha256:c5b1261d6d3e43071626931fc004f70149baeba2c8ec672bd4f27761f8e1ad6b
RUN apk add curl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" &&  \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
COPY kube-shell kubectl-node_shell
RUN chmod +x ./kubectl-node_shell && \
    mv ./kubectl-node_shell /usr/local/bin/kubectl-node_shell
