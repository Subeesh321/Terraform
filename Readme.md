Project: Create VPC resource
Region : us-eat-1

1. Create VPC
    - cidr range - 192.168.0.0/16
2. create IGW
    - attach IGW to VPC
3. create public subnet
    - associate AZ
    - cidr range
    - enable public ip - trye/false
4. create privtae subnet
    - associate AZ
    - cidr range
5. create public route table
6. create private route table
7. associate route table to public subnets
8. associate route table tp privtae subnets
9. edit route -> default gateway
10. edit private route table --> nat gateway