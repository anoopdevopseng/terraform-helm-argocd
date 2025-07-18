resource "kubernetes_namespace" "argocd" {
  provider = kubernetes.kubernetes
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "argocd" {
  provider = helm.helm
  name             = "argocd"
  chart            = "argo-cd"
  version          = var.chart_version
  repository       = "https://argoproj.github.io/argo-helm"
  namespace        = kubernetes_namespace.argocd.metadata[0].name
  create_namespace = false
  values           = var.values_yaml != "" ? [file(var.values_yaml)] : []
}
