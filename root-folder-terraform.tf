# root folder terraform 
resource "null_resource" "null" {
  count = 10000
}

output "null_output" {
  value = null_resource.null[*]
}
