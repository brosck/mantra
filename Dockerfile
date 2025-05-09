FROM golang:1.24 AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV CGO_ENABLED=0
RUN GOOS=linux GOARCH=amd64 \
    go build -o /out/mantra-amd64-linux ./main.go

FROM scratch

COPY --from=builder /app/assets /assets/

COPY --from=builder /out/mantra-amd64-linux /mantra

ENTRYPOINT ["/mantra"]
