build:
	go build -o ./bin/gop ./cmd/gop

crossbuild:
	gox -os="linux darwin windows" -arch="amd64 arm" -output="./bin/gop_{{.OS}}_{{.Arch}}" ./cmd/gop
