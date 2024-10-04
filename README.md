# Introduction Docker

A simple Go application that prints "Hello, World!" 100 times to the console. This project demonstrates building and running a Go application using Docker with a multi-stage Dockerfile and Docker Compose.

## Requirements

- Go 1.20 or higher
- Docker and Docker Compose

## Project Setup

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/nadillaizt/introduction-docker.git
    cd introduction-docker
    ```

2. **Run with Docker Compose:**
    ```bash
    docker-compose up --build
    ```

3. **Stop the Application:**
    ```bash
    docker-compose down
    ```

## Files Overview

- `main.go` - The Go source code.
- `go.mod` - Defines the module and Go version.
- `go.sum` - Contains checksums for Go module dependencies.
- `Dockerfile` - Multi-stage build Dockerfile.
- `docker-compose.yml` - Docker Compose configuration.
