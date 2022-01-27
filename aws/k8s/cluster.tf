module "my-cluster" {
  source = "github.com/env0/k8s-modules//aws?ref=chore-replace-kubectl-provider"

  region       = var.region
  cluster_name = var.cluster_name
}
