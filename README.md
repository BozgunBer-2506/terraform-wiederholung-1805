# Terraform Practice

Small Terraform project with AWS EC2, Security Group and S3 Bucket in eu-central-1.

## Files

- `main.tf` - AWS provider, EC2 instances, Security Group, S3 Bucket
- `variables.tf` - instance type, instance count, region, bucket name
- `outputs.tf` - public IPs, instance IDs, security group ID, bucket name

## Steps

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## What gets created

- 2x EC2 instances (t3.micro)
- 1x Security Group (port 22 and 80)
- 1x S3 Bucket

## Override a variable

```bash
terraform apply -var="aws_instance_type=t3.micro"
terraform apply -var="instance_count=3"
```
