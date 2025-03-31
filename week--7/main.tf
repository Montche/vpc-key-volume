# vpc code
resource "aws_vpc" "vpc1" {
  cidr_block = "172.120.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "utc-app"
    env="dev"
    Team="DevOps"
  }
}

# internet gateway
resource "aws_internet_gateway" "gtw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "utc-app"
    env="dev"
    Team="DevOps"
  }
}
# subnet public
resource "aws_subnet" "pubsb1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "172.120.1.0/24"
  availability_zone = "us-east-1"

   tags = {
    Name = "utc-app"
    env="dev"
    Team="public subnet"
  }
}
# subnet public
resource "aws_subnet" "pubsb2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "172.120.2.0/24"
  availability_zone = "us-east-1"

   tags = {
    Name = "public subnet"
  }
}
# subnet public
resource "aws_subnet" "privsub1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "172.120.3.0/24"
  availability_zone = "us-east-1"

  tags = {
    Name = "private-subnet"
  }
}
# subnet private
resource "aws_subnet" "privsub2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "172.120.4.0/24"
  availability_zone = "us-east-1"

   tags = {
    Name = "private subnet"
  }
}