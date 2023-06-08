resource "null_resource" "null-resource-test" {
}
terraform {
  required_version = "1.4.0"
  backend "remote" {
    hostname     = "backend-pr12239.api.dev.env0.com"
    organization = "8332ac86-62ab-4fd5-baf4-ac65be0ce7ea"
    workspaces {
      name = "resolve-code-misc-null"
    }
  }
}
