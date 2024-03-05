terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0"
    }
    akp = {
      source  = "akuity/akp"
      version = "~> 0.6.2"
    }
    argocd = {
      source  = "oboukili/argocd"
      version = "6.0.3"
    }
  }
}

provider "argocd" {
  server_addr = "${akp_instance.argocd.argocd.spec.instance_spec.subdomain}.cd.akuity.cloud:443"
  username    = "admin"
  password    = var.argocd_admin_password
}

provider "akp" {
  org_name = var.akp_org_name
  # api_key_id     = AKUITY_API_KEY_ID
  # api_key_secret = AKUITY_API_KEY_SECRET
}

provider "aws" {
  region = local.region
}
