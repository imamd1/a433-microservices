#initialize golang image for docker container
FROM golang:1.15-alpine

#set working dir
WORKDIR /go/src/github.com/dicodingacademy/karsajobs

#set environment of golang
ENV GO111MODULE=on
#set app port of golang
ENV APP_PORT=8080
#copy file go.mod to current workdir
COPY go.mod .
#copy file go.sum to current workdir
COPY go.sum .
#running file
RUN go mod download

COPY . .
RUN mkdir /build; \
    go build -o /build/ ./...

EXPOSE 8080
CMD ["/build/web"]
