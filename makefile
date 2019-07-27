IMAGE := json0/ruby-reference
VERSION := 1.0

build:
				sudo docker build -t $(IMAGE) .

push:
				sudo docker tag $(IMAGE) $(IMAGE)
				sudo docker push $(IMAGE)

pull:
				sudo docker pull $(IMAGE):$(VERSION)

