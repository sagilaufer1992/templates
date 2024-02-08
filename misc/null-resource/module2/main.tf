locals {
  names = ["null1", "null.null2"]
}
module "null1" {
  for_each = toset(local.names)
  source = "../module1"
}
