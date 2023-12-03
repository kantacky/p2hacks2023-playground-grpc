:
	install
	generate-proto

generate-proto:
	@rm -rf ./pkg
	@protoc --go_out=. ./proto/playground.proto

install:
	@go install github.com/golang/protobuf/protoc-gen-go@latest
	@go mod tidy
