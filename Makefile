build:
	docker build -t planutils:latest .

run: 
	docker run -it --rm --privileged planutils:latest bash

server:
	docker container stop plrcookpolplans &> /dev/null | true  && docker container rm plrcookpolplans | true
	docker run -it --detach --restart on-failure --privileged -p 5555:5555 --name plrcookpolplans planutils:latest planutils server --port 5555 --host 0.0.0.0