resource "null_resource" "null" {
}

module "rs-3" {
  source = "api-pr14469.dev.env0.com/737bb6df-1d96-4cec-825b-1e957dc54b95/rs-3/sagi"
  version = "2.0.0"
}
