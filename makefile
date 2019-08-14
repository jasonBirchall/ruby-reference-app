PROJECT := json0/ruby-reference
VERSION := 2.0

tag-test:
	sudo docker build -t test .

build:
	sudo docker build -t $(PROJECT):$(VERSION) .

shell:
	sudo docker build -t $(PROJECT):$(VERSION) . && sudo docker run --rm -it -v $${PWD}:/app $(PROJECT):$(VERSION) sh

push:
	sudo docker push $(PROJECT):$(VERSION)
