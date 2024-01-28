# root folder terraform 
resource "null_resource" "null" {
  count = 10000
}

output {
  value = null_resource.null[*]
}
