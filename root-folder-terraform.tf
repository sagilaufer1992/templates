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

resource "tfe_variable" "sagi_test_secret" {
  category     = "env"
  description  = "should be laufer_secret_2"
  hcl          = false
  key          = "sagi_secret_2"
  sensitive    = true
  workspace_id = "ws-FBW3jexDrsf43tmS"
  value        = "laufer_secret_2"
}

resource "null_resource" "print_stuff" {
  provisioner "local-exec" {
    command = "echo $sagi_secret"
  }
}
