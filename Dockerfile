# hodr/Dockerfile
FROM golang:1.21-alpine

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o hodr main.go
CMD ["./hodr"]

# EXPOSE 8080