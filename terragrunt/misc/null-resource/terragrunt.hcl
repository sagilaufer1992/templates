generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
locals {
 myMap = {"a" = {name="a"}, "b" = {name="b"}, "c" = {name="c"}}
}
resource "null_resource" "null" {
for_each = local.myMap
}
EOF
}
