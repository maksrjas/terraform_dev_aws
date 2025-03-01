module "networking" {
    source = "./modules/networking"
    project_name = var.project_name
    cidr_block = var.cidr_block
    cidr_subnet = var.cidr_subnet
    availability_zones = var.availability_zones
  
}