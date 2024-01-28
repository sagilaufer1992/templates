# root folder terraform 
resource "null_resource" "null" {
  count = 3000
}

output "null_output" {
  value = null_resource.null[*]
}
