terraform {
  cloud {
    organization = "sagi-env0"

    workspaces {
      name = "templates-old-tf"
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.50.0"
    }
  }
}

# root folder terraform
resource "null_resource" "null-tfc" {
}
data "tfe_workspace" "test" {
  name         = "templates-old-tf"
  organization = "sagi-env0"
}

data "tfe_variables" "vars" {
  workspace_id = data.tfe_workspace.test.id
}

output "vars" {
  value = {
    name  = "vars"
    value = data.tfe_variables.vars
  }
}

output "ws" {
  value = {
    name  = "ws"
    value = data.tfe_workspace.test.id
  }
}
