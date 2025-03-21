FROM golang:1.18

# Set the working directory
WORKDIR /app

# Copy go.mod, main.go, Makefile, and assets
COPY go.mod .
COPY main.go .
COPY Makefile .
COPY assets/ ./assets

# Build the Go application using the Makefile
RUN make

# Command to run the application
CMD ["./build/mantra-amd64-linux"] 