FROM registry.fedoraproject.org/fedora:latest
RUN yum install procps-ng -y
RUN curl -L -O https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin:/root/go/bin
RUN go install github.com/go-delve/delve/cmd/dlv@latest
