# azuread_application_pre_authorized does not properly destroy

## Steps to reproduce

```bash
# Login to Azure

az login

# Setup Applications

cd setup

terraform init
terraform apply

# Recreate Issue

cd ..

terraform init
terraform apply
terraform destroy
terraform apply

# Error: A resource with the ID "*/preAuthorizedApplication/*" already exists < will be thrown
```

## Cleanup

```bash
cd setup

terraform destroy
```