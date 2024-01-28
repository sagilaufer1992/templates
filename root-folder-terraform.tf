  # root folder terraform 
resource "null_resource" "null" {
}

locals {
  my_array = [for i in range(100000) : null_resource.null.id]
}

output "null_output1" {
  value = local.my_array
}

output "null_output2" {
  value = local.my_array
}

