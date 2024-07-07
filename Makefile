
## Build image (local)
build-image:
	docker build --no-cache -t service:latest .

run-service:
	docker run service:latest


run-local-service:
	python3 -m flask --app main run

## Greet Without Query name
greet-without-name:
	curl http://localhost:5000/greet

## Greet With Query name, ex: make greet-with-name NAME=test
greet-with-name:
	curl http://localhost:5000/greet?name=$(NAME)
