FROM golang:1.17
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.1
RUN go install github.com/uber/prototool/cmd/prototool@v1.10.0
RUN go install github.com/gomarkdown/mdtohtml@master
RUN go install github.com/git-chglog/git-chglog/cmd/git-chglog@v0.15.0

COPY commit-graph /usr/local/bin
COPY protoc /usr/local/bin


