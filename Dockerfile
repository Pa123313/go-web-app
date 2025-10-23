# ---- Build Stage ----
FROM golang:1.22.5 AS builder

WORKDIR /app

# Copy and download dependencies first (for caching)
COPY go.mod ./
RUN go mod download

# Copy source code
COPY . .

# Build the Go binary statically for Linux
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# ---- Final Stage (Distroless) ----
FROM gcr.io/distroless/base-debian12

WORKDIR /

# Copy the compiled binary and static files
COPY --from=builder /app/main .
COPY --from=builder /app/static ./static

# Use nonroot user
USER nonroot:nonroot

EXPOSE 8080

CMD ["./main"]

