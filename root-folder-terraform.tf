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

provider "tfe" {}

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

resource "tfe_variable" "sagi_test_secret" {
  category     = "env"
  description  = "should be laufer_secret_2"
  hcl          = false
  key          = "sagi_secret_2"
  sensitive    = true
  workspace_id = "ws-FBW3jexDrsf43tmS"
  value = "laufer_secret_2"
}


output "sagi_test_import" {
  sensitive = true
  value     = {
    name  = "sagi_test_import"
    value = tfe_variable.sagi_test_secret.value
  }
}
