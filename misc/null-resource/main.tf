resource "null_resource" "null" {
}

output "out1" {
  value = null_resource.null.id
  sensitive = true
}
