generate "null_resource" {
  path = "tg.main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "env0-s3-aaaaaaah"
  acl    = "public-read"
  force_destroy = true
}

output "url" {
  value = aws_s3_bucket.website_bucket.bucket_domain_name
}
 
terraform {
  backend "s3" {
    bucket = "env0-tf-remote-backend-bucket"
    key = "remote-backend-hooks"
    region = "us-east-1"
  }
}
EOF
}
