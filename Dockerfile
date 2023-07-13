FROM golang:1.20-alpine
WORKDIR /build
COPY . .
RUN go mod download
RUN go build -tags netgo -o authservice ./cmd/rest/...

FROM alpine:latest
RUN apk add libc6-compat
WORKDIR /app
COPY --from=0 /build/authservice .
EXPOSE 9876
CMD ./authservice