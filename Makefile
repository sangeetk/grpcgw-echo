all:
	protoc --proto_path=proto --go_out=plugins=grpc:service proto/echo.proto
	protoc --proto_path=proto --grpc-gateway_out=logtostderr=true:service proto/echo.proto
	protoc --proto_path=proto --swagger_out=logtostderr=true:service proto/echo.proto
	go build -o grpcgw-echo

clean:
	rm -f service/echo.pb.go
	rm -f service/echo.pb.gw.go
	rm -f service/echo.swagger.json
	rm -f grpcgw-echo
