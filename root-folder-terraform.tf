# root folder terraform 
resource "null_resource" "null" {
  count = 2500
}

output {
  value = null_resource.null[*]
}
