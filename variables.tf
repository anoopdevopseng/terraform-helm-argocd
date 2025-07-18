variable "namespace" {
  description = "Namespace where ArgoCD will be deployed"
  type        = string
  default     = "argocd"
}

variable "chart_version" {
  type    = string
  default = "8.0.17"
}

variable "values_yaml" {
  description = "Path to values.yaml to override Helm chart values"
  type        = string
  default     = ""
}