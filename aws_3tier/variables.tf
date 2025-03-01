variable "project_name" {
    description = "Name of the project"
  
}


variable "cidr_block" {
    description = "CIDR block for VPC"
  
}


variable "cidr_subnet" {
    description = "CIDR subnet"
    type = map(list(string))
    default = {
        public = [ "155.0.1.0/24", "155.0.2.0/24" ]
        app = [ "155.0.3.0/24", "155.0.4.0/24" ]
        db = [ "155.0.5.0/24", "155.0.6.0/24" ] 
    }
}

variable "availability_zones" {
    description = "AZ's for subnets"
    type = list(string)
    default = [ "eu-north-1a", "eu-north-1b" ]
  
}