generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF  
variable "my_tf_var" {
}
  
resource "null_resource" "null" {
}
  
output "my_output" {
  value = var.my_tf_var
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
