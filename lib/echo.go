package lib

import (
	"context"
	"playground/pkg/playground"
)



func (s *EchoServer) Echo(ctx context.Context, req *playground.EchoRequest) (*playground.EchoResponse, error) {
	return &playground.EchoResponse{
		Message: req.GetMessage(),
	}, nil
}
