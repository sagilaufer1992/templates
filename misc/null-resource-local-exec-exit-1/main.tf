resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "exit 1"
  }
}
