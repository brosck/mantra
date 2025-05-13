FROM golang:1.24 AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

RUN go build -o /out/mantra main.go

FROM scratch

COPY --from=builder /out/mantra /mantra

ENTRYPOINT ["/mantra"]
