# Everything-As-Code
## Terraform
### AWS
1. https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html?icmpid=docs_sso_user_portal#envvars-set
```
export AWS_ACCESS_KEY_ID="xxx"
export AWS_SECRET_ACCESS_KEY="xxx"
export AWS_SESSION_TOKEN="xxx"
```

### Akuity
1. [Sign up](https://akuity.cloud) for an account on the Akuity Platform.
2. [Generate API keys](https://docs.akuity.io/organizations/api-keys).
3. Export them.
```
export AKUITY_API_KEY_ID="xxx"
export AKUITY_API_KEY_SECRET="xxx"
export AKUITY_SERVER_URL=https://akuity.cloud
```

### Terraform
```
terraform init
terraform apply \
    -var akp_org_name=<akuity-platform-org> \
    -var argocd_admin_password=<my-admin-password>
```