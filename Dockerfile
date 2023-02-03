FROM golang:alpine3.17 AS builder
WORKDIR /opt/hello-gotuna
COPY . .
RUN go build examples/fullapp/cmd/main.go


FROM alpine:latest AS runtime
WORKDIR /opt/hello-gotuna
CMD ["./main"]
COPY --from=builder /opt/hello-gotuna/main .
