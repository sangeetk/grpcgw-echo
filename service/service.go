package service

import (
	"context"
)

type Server struct{}

func (s *Server) Echo(ctx context.Context, request *StringMessage) (*StringMessage, error) {
	return &StringMessage{Value: request.Value}, nil
}
