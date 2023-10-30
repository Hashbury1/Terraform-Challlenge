# Create a VPC
resource "aws_vpc" "for_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "for_vpc"
  }
}


# create VPC subnet 
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.for_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}

# Create internet gateway for internet access 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.for_vpc.id

  tags = {
    Name = "IGW"
  }
}

