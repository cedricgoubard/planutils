build:
	docker build -t planutils:latest .

run: 
	docker run -it --rm --privileged planutils:latest bash

server:
	docker run -it --rm --privileged -p 5555:5555 planutils:latest planutils server --port 5555