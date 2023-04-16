terraform {
  required_providers {
    helm = {
        version = "2.6.0"
    }
 }
}

provider "helm" {
    kubernetes {
        config_path = "~/.kube/config"
        config_context = "minikube"
    }
}
