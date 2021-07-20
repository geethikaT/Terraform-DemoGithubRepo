terraform {
  backend "s3" {
    bucket = "terraform-remotestate-s3"
    key    = "terraform.tfstate"
    region = "us-west-2"
	profile = "aws-keys"
  }
}