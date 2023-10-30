
# create EC2 instance 


resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "tf-server"
  }
}