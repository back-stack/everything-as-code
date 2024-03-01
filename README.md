# Everything As Code

## AWS
```
export AWS_ACCESS_KEY_ID="xxx"
export AWS_SECRET_ACCESS_KEY="xxx"
export AWS_SESSION_TOKEN="xxx"
```

## Akuity
```
export AKUITY_API_KEY_ID="xxx"
export AKUITY_API_KEY_SECRET="xxx"
export AKUITY_SERVER_URL=https://akuity.cloud
```

## Terraform
```
terraform init
terraform apply -var akp_org_name=<akuity-platform-org> -var argocd_admin_password=<my-admin-password>
```