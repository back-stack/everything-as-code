locals {
  name = "everything-as-code"
  region = var.region
  cluster_version = "1.29"

  tags = {
    Owner = "nicholas-morey"
  }
}
