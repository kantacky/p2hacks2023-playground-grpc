:
	install
	generate-proto

generate-proto:
	@rm -rf ./pkg
	@protoc --go_out=. --go-grpc_out=. ./proto/playground.proto
	@go mod tidy

install:
	@go install github.com/golang/protobuf/protoc-gen-go@latest
	@go mod tidy
