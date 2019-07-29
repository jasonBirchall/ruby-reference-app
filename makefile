IMAGE := json0/ruby-reference
VERSION := 1.6

build:
				sudo docker build -t $(IMAGE):$(VERSION) .

push:
				sudo docker push $(IMAGE):$(VERSION)

pull:
				sudo docker pull $(IMAGE):$(VERSION)

