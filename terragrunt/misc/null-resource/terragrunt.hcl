generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "null1" {
}
resource "null_resource" "null2" {
}
resource "null_resource" "null3" {
}
EOF
}
