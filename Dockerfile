FROM golang:1.17
ENV PROTOC_ZIP=protoc-3.14.0-linux-x86_64.zip
RUN curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/${PROTOC_ZIP}
RUN unzip -o ${PROTOC_ZIP} -d ./proto 
RUN chmod 755 -R ./proto/bin
ENV BASE=/usr
# Copy into path
RUN cp ./proto/bin/protoc ${BASE}/bin/
RUN cp -R ./proto/include/* ${BASE}/include/

RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.1
RUN go install github.com/uber/prototool/cmd/prototool@v1.10.0
RUN go install github.com/gomarkdown/mdtohtml@master
RUN go install github.com/git-chglog/git-chglog/cmd/git-chglog@v0.15.0

COPY commit-graph /usr/local/bin


