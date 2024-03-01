data "aws_availability_zones" "available" {}

locals {
  name = "everything-as-code"
  region = var.region
  cluster_version = "1.29"

  vpc_cidr = var.vpc_cidr
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Owner = "nicholas-morey"
  }
}
