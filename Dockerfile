FROM golang:1.20-alpine
WORKDIR /build
COPY . .
RUN go mod download
RUN go build -tags netgo -o auth-go-service ./cmd/rest/...

FROM alpine:latest
RUN apk add libc6-compat
WORKDIR /app
COPY --from=0 /build/auth-go-service .
EXPOSE 9876
CMD ./auth-go-service