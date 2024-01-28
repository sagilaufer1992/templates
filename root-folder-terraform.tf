# root folder terraform 
resource "null_resource" "null" {
  count = 1000
}

resource "null_resource" "null-dep" {
  count = 500
  depends_on = [null_resource.null[count.index], null_resource.null[2 * count.index + 1]]
}
