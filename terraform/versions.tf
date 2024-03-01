terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0"
    }
    akp = {
      source  = "akuity/akp"
      version = "~> 0.6.1"
    }
    argocd = {
      source  = "oboukili/argocd"
      version = "6.0.3"
    }
  }

  # ##  Used for end-to-end testing on project; update to suit your needs
  # backend "s3" {
  #   bucket = "terraform-ssp-github-actions-state"
  #   region = "us-west-2"
  #   key    = "e2e/eks-akuity/terraform.tfstate"
  # }
}

# provider "argocd" {
#   server_addr = module.akuity.akuity_server_addr
#   username    = "admin"
#   password    = var.argocd_admin_password
# }

# provider "akp" {
#   org_name = var.akp_org_name
#   # api_key_id     = AKUITY_API_KEY_ID
#   # api_key_secret = AKUITY_API_KEY_SECRET
# }

provider "aws" {
  region = local.region
}
