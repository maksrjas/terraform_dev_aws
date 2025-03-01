
/*
terraform {
  backend "S3" {
    bucket = "${var.project_name}-xyz-terraform"
    key = "remote_bucket/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
    use_lockfile = true
  }
}
*/

resource "aws_s3_bucket" "backend_bucker" {
    bucket = "${var.project_name}-xyz-terraform"
  
}
