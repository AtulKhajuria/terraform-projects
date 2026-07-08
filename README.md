# Terraform Learning Journey

This repository documents my 7-day hands-on Terraform learning journey. Each day focuses on a specific Terraform concept while building real AWS infrastructure.

---

# Day 1 - AWS Network Infrastructure

## Objective
Create the foundational AWS networking infrastructure using Terraform.

## Resources Created
- VPC
- Internet Gateway (IGW)
- Public Subnet 1
- Public Subnet 2
- Route Table
- Default Route
- Route Table Associations

## Terraform Concepts Learned
- Provider
- Resources
- Variables
- Outputs
- terraform init
- terraform plan
- terraform apply
- terraform destroy

## AWS Concepts Learned
- VPC
- Subnets
- Internet Gateway
- Route Table
- Route
- Route Table Association

## Key Takeaways
- Built a complete networking infrastructure using Infrastructure as Code.
- Learned how Terraform provisions AWS resources.
- Understood the relationship between VPC, Subnets, Internet Gateway and Route Tables.
- Parameterized the infrastructure using variables.

---

# Day 2 - Terraform Modules

## Objective
Refactor the networking infrastructure into reusable Terraform modules.

## Resources Created
- Network Module
  - VPC
  - Internet Gateway
  - Public Subnets
  - Route Table
  - Route Table Associations

## Terraform Concepts Learned
- Modules
- Module Inputs
- Module Outputs
- Root Module
- Child Module
- Code Reusability

## AWS Concepts Learned
- Reusable Infrastructure Design

## Key Takeaways
- Converted the networking code into a reusable module.
- Learned how values are passed from the Root Module to Child Modules.
- Learned how outputs are returned from modules.
- Understood why modules improve maintainability and reduce code duplication.

---

# Day 3 - Remote Backend 

## Objective
Configure a remote backend for Terraform state management. 
Not commited separate Day-3, it is in the Day-2 code only

## Resources Created
- Amazon S3 Bucket
- DynamoDB Table
- Remote Backend Configuration

## Terraform Concepts Learned
- Terraform State
- Local State
- Remote State
- Backend Configuration
- State Migration
- State Locking
- Infrastructure Drift

## AWS Concepts Learned
- S3 Versioning
- DynamoDB Locking
- Remote State Storage

## Key Takeaways
- Migrated Terraform state from local storage to Amazon S3.
- Configured DynamoDB for state locking.
- Understood why remote state is required for team collaboration.
- Learned how Terraform detects infrastructure drift.
- Understood how Terraform uses the state file as the mapping between configuration and AWS resources.

---
# Day 4 - EC2 Provisioning

## Objective
Provision an EC2 instance using Terraform and automatically install Nginx using a user data script.

## Resources Created
- Security Group
- Key Pair
- Ubuntu AMI Data Source
- EC2 Instance

## Terraform Concepts Learned
- Data Sources
- `aws_instance`
- `aws_key_pair`
- `user_data`
- `file()` function

## Key Takeaways
- Provisioned an EC2 instance using Terraform.
- Fetched the latest Ubuntu AMI dynamically using a data source.
- Configured Security Group and Key Pair for secure access.
- Automated Nginx installation using `user_data.sh`.
- Verified the web server by accessing the EC2 Public IP.

---
# Day 5 - Application Load Balancer (ALB)

## Objective
Deploy an Application Load Balancer (ALB) to distribute traffic to the EC2 instance.

## Resources Created
- Application Load Balancer (ALB)
- Target Group
- Target Group Attachment
- HTTP Listener

## Terraform Concepts Learned
- `aws_lb`
- `aws_lb_target_group`
- `aws_lb_target_group_attachment`
- `aws_lb_listener`

## Key Takeaways
- Created an internet-facing Application Load Balancer.
- Registered the EC2 instance with a Target Group.
- Configured an HTTP Listener to forward requests to the Target Group.
- Accessed the application using the ALB DNS name instead of the EC2 Public IP.

```
