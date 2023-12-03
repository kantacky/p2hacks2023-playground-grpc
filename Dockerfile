FROM golang:1.21.0-alpine
RUN mkdir /app
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build ./main.go
CMD ["./main"]
