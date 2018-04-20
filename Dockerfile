FROM golang:1.10.1

WORKDIR /go/src/app
COPY . .

RUN go install -v ./...

CMD app
