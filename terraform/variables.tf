variable "akp_org_name" {
  type        = string
  description = "Akuity Platform organization name."
}
variable "argocd_admin_password" {
  type        = string
  description = "The password to use for the `admin` Argo CD user."
}
variable "app_of_apps" {
  type = object({
    repo_url        = string
    path            = string
    target_revision = string
  })
  default = {
    repo_url = "https://github.com/back-stack/everything-as-code"
    path = "argo-cd/apps"
    target_revision = "HEAD"
  }
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}
