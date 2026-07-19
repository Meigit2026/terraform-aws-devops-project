module "vpc" {
  source = "./modules/vpc"

  vpc_name = "devops-vpc"
  vpc_cidr = "10.0.0.0/16"
}
module "subnet" {
  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id

  public_subnet_1_cidr  = "10.0.1.0/24"
  public_subnet_2_cidr  = "10.0.2.0/24"
  private_subnet_1_cidr = "10.0.11.0/24"
  private_subnet_2_cidr = "10.0.12.0/24"

  availability_zone_1 = "ap-south-1a"
  availability_zone_2 = "ap-south-1b"
}
module "internet_gateway" {
  source = "./modules/internet-gateway"

  vpc_id = module.vpc.vpc_id
}