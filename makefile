IMAGE := json0/ruby-reference
VERSION := 1.9

build:
				sudo docker build -t $(IMAGE):$(VERSION) .

push:
				sudo docker push $(IMAGE):$(VERSION)

pull:
				sudo docker pull $(IMAGE):$(VERSION)

run:
				sudo docker run --rm -d $(IMAGE):$(VERSION)
