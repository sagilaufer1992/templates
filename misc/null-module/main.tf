
terraform {
  backend "remote" {
    hostname     = "backend-pr12239.api.dev.env0.com"
    organization = "8332ac86-62ab-4fd5-baf4-ac65be0ce7ea"
    workspaces {
      name = "null-resource-module"
    }
  }
}


module "null" {
  source = "../null-resource"
}
