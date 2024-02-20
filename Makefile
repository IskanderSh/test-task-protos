generate:
	protoc -I user-service user-service/*.proto \
		--go_out=./gen/go/user-service \
		--go_opt=paths=source_relative \
		--go-grpc_out=./gen/go/user-service \
		--go-grpc_opt=paths=source_relative
	protoc -I auth-service auth-service/*.proto \
		--go_out=./gen/go/auth-service \
		--go_opt=paths=source_relative \
		--go-grpc_out=./gen/go/auth-service \
		--go-grpc_opt=paths=source_relative
