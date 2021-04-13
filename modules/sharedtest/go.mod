module github.com/kubevirt/kubevirt-tekton-tasks/modules/sharedtest

go 1.15

require (
	github.com/onsi/ginkgo v1.15.1
	github.com/openshift/api v0.0.0
	k8s.io/api v0.20.2
	k8s.io/apimachinery v0.20.2
	kubevirt.io/client-go v0.39.0
	kubevirt.io/containerized-data-importer v1.31.0
	sigs.k8s.io/yaml v1.2.0
)

// Pinned to kubernetes-1.20.2 (due to kubevirt/client-go v0.39.0)
replace (
	k8s.io/api => k8s.io/api v0.20.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.20.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.20.2
	k8s.io/apiserver => k8s.io/apiserver v0.20.2
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.20.2
	k8s.io/client-go => k8s.io/client-go v0.20.2
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.20.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.20.2
	k8s.io/code-generator => k8s.io/code-generator v0.20.2
	k8s.io/component-base => k8s.io/component-base v0.20.2
	k8s.io/cri-api => k8s.io/cri-api v0.20.2
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.20.2
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.20.2
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.20.2
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.20.2
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.20.2
	k8s.io/kubectl => k8s.io/kubectl v0.20.2
	k8s.io/kubelet => k8s.io/kubelet v0.20.2
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.20.2
	k8s.io/metrics => k8s.io/metrics v0.20.2
	k8s.io/node-api => k8s.io/node-api v0.20.2
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.20.2
	k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.20.2
	k8s.io/sample-controller => k8s.io/sample-controller v0.20.2
)

// Kubernetes
replace k8s.io/klog => k8s.io/klog v0.4.0

// KubeVirt
replace github.com/go-kit/kit => github.com/go-kit/kit v0.3.0

// Openshift
// Pinned to openshift-master 20210309
replace (
	github.com/openshift/api => github.com/openshift/api v0.0.0-20210309190949-7d6cac66d2a4
	github.com/openshift/client-go => github.com/openshift/client-go v0.0.0-20210112165513-ebc401615f47
)

// CDI
// Pinned to v1.31.0
replace (
	github.com/operator-framework/operator-lifecycle-manager => github.com/operator-framework/operator-lifecycle-manager v0.0.0-20190128024246-5eb7ae5bdb7a
	kubevirt.io/containerized-data-importer => kubevirt.io/containerized-data-importer v1.31.0
)
