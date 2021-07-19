resource "aws_instance" "web" {
  ami           = "ami-0dc8f589abe99f538"
  instance_type = "t3.micro"
  key_name      = "KeypairNew"

  tags = {
    Name = "Geetha-new"
  }
}