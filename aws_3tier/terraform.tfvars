project_name = "Dev-v3"
cidr_block = "155.0.0.0/16"

cidr_subnet = {
    public = [ "155.0.1.0/24", "155.0.2.0/24" ] # default [ "155.0.1.0/24", "155.0.2.0/24" ]
    app = [ "155.0.3.0/24", "155.0.4.0/24" ] # default [ "155.0.3.0/24", "155.0.4.0/24" ]
    db = [ "155.0.5.0/24", "155.0.6.0/24" ] # default [ "155.0.5.0/24", "155.0.6.0/24" ]

}

availability_zones = [ "eu-north-1a", "eu-north-1b" ] # default [ "eu-north-1a", "eu-north-1b" ]

