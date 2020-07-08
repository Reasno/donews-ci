FROM golang:alpine
RUN go get -u github.com/gomarkdown/mdtohtml
RUN go get -u github.com/git-chglog/git-chglog/cmd/git-chglog
