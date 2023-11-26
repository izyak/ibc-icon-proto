PROTO_FILES=$(shell find ./ -type f -name "*.proto")

proto-gen-go:
	@echo ${PROTO_FILES}
	@protoc -I ./ --go_out ./ ${PROTO_FILES}
