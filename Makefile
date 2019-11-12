IMAGE_NAME := "loongcn/cert-manager-webhook-aliclouddns"
IMAGE_TAG := "latest"
NAMESPACE := "cert-manager"

OUT := $(shell pwd)/_out

$(shell mkdir -p "$(OUT)")

verify:
	go test -v .

build:
	docker build -t "$(IMAGE_NAME):$(IMAGE_TAG)" .

.PHONY: rendered-manifest.yaml
rendered-manifest.yaml:
	helm template \
	    --name cert-manager-webhook-aliclouddns \
		--namespace ${NAMESPACE} \
        --set image.repository=$(IMAGE_NAME) \
        --set image.tag=$(IMAGE_TAG) \
        deploy/cert-manager-webhook-aliclouddns > "$(OUT)/rendered-manifest.yaml"
