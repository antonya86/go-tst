VERSION=`git describe --tags`
LDFLAGS=-ldflags "-w -s -X main.Version=${VERSION}"

node:
	GOOS=linux GOARCH=amd64 go build ${LDFLAGS} -o build/bin/app main.go
linux:
	GOOS=linux GOARCH=amd64 go build ${LDFLAGS} -o build/bin/app main.go
mac:
	GOOS=darwin GOARCH=amd64 go build ${LDFLAGS} -o build/bin/app main.go
m1:
	GOOS=darwin GOARCH=arm64 go build ${LDFLAGS} -o build/bin/app main.go