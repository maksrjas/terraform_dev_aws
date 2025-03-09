resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
      Name = "${var.project_name}-public-rt"
    }
}

resource "aws_route_table_association" "public_rt_association" {
    route_table_id = aws_route_table.public_route_table.id
    count = length(aws_subnet.public_subnet)
    subnet_id = aws_subnet.public_subnet[count.index].id
}


resource "aws_route_table" "app_route_table" {
    count = length(aws_subnet.app_subnet)
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gw[count.index].id
    }
    tags = {
      Name = "${var.project_name}-app-rt-${count.index + 1}"
    }
}

resource "aws_route_table_association" "app_rt_association" {
    route_table_id = aws_route_table.app_route_table[count.index].id
    count = length(aws_subnet.app_subnet)
    subnet_id = aws_subnet.app_subnet[count.index].id
}


resource "aws_route_table" "db_route_table" {
    count = length(aws_subnet.db_subnet)
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gw[count.index].id
    }
    tags = {
      Name = "${var.project_name}-db-rt-${count.index + 1}"
    }

}

resource "aws_route_table_association" "db_rt_association" {
    route_table_id = aws_route_table.db_route_table[count.index].id
    count = length(aws_subnet.db_subnet)
    subnet_id = aws_subnet.db_subnet[count.index].id
}
