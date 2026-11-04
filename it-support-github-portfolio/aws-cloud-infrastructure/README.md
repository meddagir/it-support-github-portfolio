# AWS Cloud Infrastructure Lab

Terraform creates a small VPC, public subnet and internet gateway to demonstrate cloud networking. **AWS charges may apply**, even in test accounts. No EC2 instances or databases are created.

## Prerequisites

- Terraform >= 1.5
- AWS account and CLI credentials configured with least privilege
- An isolated personal lab account or sandbox

## Run

```bash
cd terraform
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
# After inspection:
terraform destroy
```

Never commit `.tfstate`, secrets, or credential files. Confirm your AWS region and pricing before applying. The default region is `us-east-1`.

## Skills
Terraform, VPC, subnets, route tables, security boundaries, infrastructure lifecycle.
