resource "aws_nat_gateway" "nat_gw" {
    count = length(aws_subnet.public_subnet)
    subnet_id = aws_subnet.public_subnet[count.index].id
    allocation_id = aws_eip.eip[count.index].id
    
  
}

