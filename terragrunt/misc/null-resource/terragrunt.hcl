generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null" {
}
  
terraform {
  backend "s3" {
    bucket = "env0-tf-remote-backend-bucket"
    key = "remote-backend-hooks"
    region = "us-east-1"
  }
}
EOF
}

terraform {
  before_hook "before_hook_1" {
    commands     = ["init"]
    execute      = ["terraform", "--version"]
  }

  before_hook "before_hook_2" {
    commands     = ["init"]
    execute      = ["terraform", "init", "-get=false", "-get-plugins=false"]
  }
  
  before_hook "before_hook_3" {
    commands     = ["init"]
    execute      = ["terraform", "output", "-json"]
  }
}
