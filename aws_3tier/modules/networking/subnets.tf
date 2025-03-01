resource "aws_subnet" "public_subnet" {
    count = length(var.availability_zones)
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true
    cidr_block = var.cidr_subnet.public[count.index]
    #cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
    availability_zone = var.availability_zones[count.index]
    #availability_zone = element(data.aws_availability_zones.available.names, count.index)
  
}

resource "aws_subnet" "app_subnet" {
    count = length(var.availability_zones)
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = false
    cidr_block = var.cidr_subnet.app[count.index]
    availability_zone = var.availability_zones[count.index]
  
}

resource "aws_subnet" "db_subnet" {
    count = length(var.availability_zones)
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = false
    cidr_block = var.cidr_subnet.db[count.index]
    availability_zone = var.availability_zones[count.index]
  
}

