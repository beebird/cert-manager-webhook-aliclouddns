module github.com/jetstack/cert-manager-webhook-aliclouddns

go 1.13.1

require (
	github.com/aliyun/alibaba-cloud-sdk-go v0.0.0-20190708091929-88eb281ef085
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/jetstack/cert-manager v0.11.0
	github.com/pkg/errors v0.8.1
	k8s.io/apiextensions-apiserver v0.0.0-20190918161926-8f644eb6e783
	k8s.io/apimachinery v0.0.0-20190913080033-27d36303b655
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
)

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20190918160344-1fbdaa4c8d90

replace github.com/evanphx/json-patch => github.com/evanphx/json-patch v0.0.0-20190203023257-5858425f7550
