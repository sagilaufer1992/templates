  # root folder terraform 
resource "null_resource" "null" {
  count = 3000
}

output "null_output1" {
  value = null_resource.null[*]
}

output "null_output2" {
  value = null_resource.null[*]
}

output "null_output3" {
  value = null_resource.null[*]
}

output "null_output4" {
  value = null_resource.null[*]
}

output "null_output5" {
  value = null_resource.null[*]
}

output "null_output6" {
  value = null_resource.null[*]
}
