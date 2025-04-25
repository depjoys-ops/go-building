# stage 1
FROM golang:1.24.2-alpine3.21 AS builder
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . ./
RUN GOOS=linux GOARCH=amd64 go build -o app ./cmd

# stage 2
FROM alpine:3.21 AS app
RUN apk --no-cache upgrade && apk --no-cache add ca-certificates
COPY --from=builder /app/app /usr/local/bin/app
WORKDIR /usr/local/bin/
CMD ["app"]
