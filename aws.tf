## aws profile
provider "aws" {
  region     = "us-west-2"
	profile = "aws-keys"
	
}

resource "aws_instance" "web" {
  ami           = "ami-0dc8f589abe99f538"
  instance_type = "t3.micro"
  availability_zone = "us-west-2a"
  key_name = "TestKPPPK"
  vpc_security_group_ids = [aws_security_group.SG_New.id]

  tags = {
    Name = "Geethika"
	Environment = "Dev"
  }
}