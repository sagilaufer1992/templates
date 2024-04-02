terraform {
  before_hook "before_hook" {
    commands     = ["apply", "plan", "output"]
    execute      = ["echo", "Running Terraform"]
  }
}

generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null" {
}
EOF
}
