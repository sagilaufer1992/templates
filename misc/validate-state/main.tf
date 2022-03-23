terraform {
  required_version = ">= 0.12.24"
}

resource "null_resource" "null1" {
}

resource "null_resource" "null3" {
  triggers = {
    ids = null_resource.null1.id
  }
}


resource "null_resource" "null2" {

}
