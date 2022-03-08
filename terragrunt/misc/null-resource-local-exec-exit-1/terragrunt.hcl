generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "exit 1"
  }
}
EOF
}
