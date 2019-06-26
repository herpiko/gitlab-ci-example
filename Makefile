run:
	go run main.go

test:
	go test -cover

docker-test:
	cp docker/test/Dockerfile .
	docker build -t test .
	docker run test

build-debug:
	mkdir -p build/debug
	cp docker/build/Dockerfile .
	docker build -t builder .
	docker run -v $(pwd)/build:/build/debug --entrypoint /usr/local/go/bin/go builder build -o /build/debug/gitlab-ci-example

build-release:
	mkdir -p build/release
	cp docker/build/Dockerfile .
	docker build -t builder .
	docker run -v $(pwd)/build:/build/debug --entrypoint /usr/local/go/bin/go builder build -ldflags "-s -w" -o /build/debug/gitlab-ci-example
