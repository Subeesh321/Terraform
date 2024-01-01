module "vpc"{
  source = "../vpc"

  region = var.region
  vpc_id = var.vpc_id
  priv_sub_cidr = var.priv_sub_cidr
  priv_sub_az = var.priv_sub_az
  pub_sub1_cidr = var.pub_sub1_cidr
  pub_sub1_az = var.pub_sub1_az
  pub_sub2_cidr = var.pub_sub2_cidr
  pub_sub2_az = var.pub_sub2_az
  rt_destination_cidr = var.rt_destination_cidr
}


resource "aws_instance" "examp-1" {
  ami                     = var.ami1
  instance_type           = var.instance_type1
  key_name = "Example"
  subnet_id              = aws_subnet.pub_sub1.id
  vpc_security_group_ids = [aws_security_group.allow_http.id]
}

