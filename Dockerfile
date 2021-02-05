FROM golang:1.15.6

RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/

COPY . /usr/src/app/

FROM alpine:latest

RUN go build -o adilkhan ./cmd/web
RUN apk --no-cache add ca-certificates
EXPOSE 4000

CMD ["./adilkhan"]

