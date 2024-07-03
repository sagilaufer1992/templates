locals {
  names = ["null1", "null2", "null3"]
}

resource "null_resource" "null" {
  for_each = toset(local.names)
}
