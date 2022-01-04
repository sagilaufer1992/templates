generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null" {
}
EOF
}

terraform {
  before_hook "before_hook" {
    commands     = ["apply"]
    execute      = ["echo", "Applying my terraform"]
  }

  after_hook "after_hook" {
    commands     = ["apply"]
    execute      = ["echo", "Finished applying Terraform successfully!"]
    run_on_error = false
  }
}
