# Stage 1: Build the Go application
FROM golang:1.23.1 AS builder

WORKDIR /app

# Copy Go modules and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code and build
COPY . .
RUN go build -o introduction-docker-app

# Stage 2: Run the application
FROM busybox:latest

WORKDIR /app

# Copy the compiled Go binary from builder stage
COPY --from=builder /app/introduction-docker-app .

# Run the application
CMD ["./introduction-docker-app"]
