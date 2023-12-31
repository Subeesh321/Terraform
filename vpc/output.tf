output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "pub_subnet1" {
    value = aws_subnet.pub_sub1.id
}
output "pub_subnet2" {
    value = aws_subnet.pub_sub2.id
}

output "priv_subnet" {
    value = aws_subnet.priv_sub.id
}