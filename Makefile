build:
	docker build -t planutils:latest .

run: 
	docker run -it --rm --privileged --name prlcookpolplans planutils:latest bash

server:
	docker container stop prlcookpolplans | true  && docker container rm prlcookpolplans | true
	docker run -it --detach --restart on-failure --privileged -p 5555:5555 --name prlcookpolplans planutils:latest planutils server --port 5555 --host 0.0.0.0