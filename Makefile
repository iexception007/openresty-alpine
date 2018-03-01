REPO=wisecloud-openresty-alpine
VERSION=latest

build:
	docker build -t $(REPO):$(VERSION) .

test:
	-docker rm -f my-openresty
	docker run -p 82:80 --name my-openresty -d $(REPO):$(VERSION)
