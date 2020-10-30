REGISTRY_PREFIX ?= qianchenglong

VERSION ?= $(shell git describe --dirty --always --tags)

.PHONY: all
all: toolbox

.PHONY: toolbox
toolbox:
	@echo "===========> Building $@ $(VERSION) docker image"
	docker build --pull -t $(REGISTRY_PREFIX)/$@:$(VERSION) -f Dockerfile .
	docker tag $(REGISTRY_PREFIX)/$@:$(VERSION) $(REGISTRY_PREFIX)/$@:latest
	@echo "===========> Pushing $@ $(VERSION) image to $(REGISTRY_PREFIX)"
	docker push $(REGISTRY_PREFIX)/$@:$(VERSION)
	docker push $(REGISTRY_PREFIX)/$@:latest
