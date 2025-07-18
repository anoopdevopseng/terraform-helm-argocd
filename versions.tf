terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      configuration_aliases = [ kubernetes.kubernetes ]
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.0.0"
      configuration_aliases = [ helm.helm ]
    }
  }
}