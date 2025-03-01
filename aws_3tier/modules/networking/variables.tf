variable "cidr_block" {
    description = "CIDR block for VPC"
  
}


variable "project_name" {
    description = "Name of the project"
  
}


variable "availability_zones" {
    description = "Public AZ's"
    type = list(string)
  
}


variable "cidr_subnet" {
    description = "CIDR subnets"
    type = map(list(string))
  
}