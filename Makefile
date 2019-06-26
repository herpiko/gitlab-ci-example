test:
	go test -cover

docker-test:
	cp docker/test/Dockerfile .
	docker build -t test .
	docker run test > result.txt
	grep -r PASS result.txt
