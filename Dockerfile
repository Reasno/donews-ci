FROM golang
ENV GOPROXY=goproxy.cn
RUN go get -u github.com/gomarkdown/mdtohtml
RUN go get -u github.com/git-chglog/git-chglog/cmd/git-chglog
COPY commit-graph /usr/local/bin