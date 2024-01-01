resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_id
}

resource "aws_internet_gateway" "dpt2_gw" {
    vpc_id = aws_vpc.vpc.id

}

resource "aws_eip" "ip" {
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.pub_sub1.id

}
