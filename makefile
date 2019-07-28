IMAGE := json0/ruby-reference
VERSION := 1.3

build:
				sudo docker build -t $(IMAGE):$(VERSION) .

push:
				sudo docker push $(IMAGE):$(VERSION)

pull:
				sudo docker pull $(IMAGE):$(VERSION)

