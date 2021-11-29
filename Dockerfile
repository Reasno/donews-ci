FROM golang:1.17
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.1
RUN go install github.com/uber/prototool/cmd/prototool
RUN go install github.com/gomarkdown/mdtohtml
RUN go install github.com/git-chglog/git-chglog/cmd/git-chglog
COPY commit-graph /usr/local/bin


