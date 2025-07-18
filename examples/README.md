# Module Usage

## Example
# setup Default Argocd
```hcl
module "argocd" {
  source          = "github.com/hfts-se-prjs/terraform-helm-argocd"
  namespace       = "argocd"
}
```
# Setup Argocd with custom values
```hcl
module "argocd" {
  source          = "github.com/hfts-se-prjs/terraform-helm-argocd"
  namespace       = "argocd"
  values_yaml     = "${path.module}/argocd-values.yaml"
}
```