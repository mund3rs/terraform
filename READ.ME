
## Breakdown of Each File

### Root Directory Files

- **main.tf**: This is the main Terraform configuration file. It defines the AWS provider and includes all the modules that make up the infrastructure, such as VPC, EC2 instances, auto-scaling groups, load balancer, CloudFront, S3, RDS, Route 53, bastion host, and EFS.

- **variables.tf**: This file contains all the variable definitions used in the Terraform configuration. Variables are used to parameterize the configuration, making it more flexible and reusable.

- **outputs.tf**: This file defines the outputs for the Terraform configuration. Outputs are used to display information about the infrastructure after it is created, such as the DNS names and endpoints of the load balancer, CloudFront distribution, S3 bucket, RDS instance, and Route 53 zone.

### Module Directory Files

#### VPC Module

- **modules/vpc/main.tf**: Defines the VPC, subnets, and NAT gateway.
- **modules/vpc/variables.tf**: Declares variables used in the VPC module.
- **modules/vpc/outputs.tf**: Outputs the VPC ID.

#### S3 Module

- **modules/s3/main.tf**: Creates an S3 bucket for WordPress media and sets up versioning and lifecycle rules.
- **modules/s3/variables.tf**: No variables needed for this module.
- **modules/s3/outputs.tf**: Outputs the S3 bucket name.

#### EC2 Instance Module

- **modules/ec2_instance/main.tf**: Defines an EC2 instance configured to host WordPress.
- **modules/ec2_instance/variables.tf**: Declares variables such as instance type, key name, subnet ID, security group IDs, and tags.
- **modules/ec2_instance/outputs.tf**: Outputs the EC2 instance ID.

#### Auto-scaling Module

- **modules/autoscaling/main.tf**: Defines the auto-scaling group and launch configuration for the EC2 instances.
- **modules/autoscaling/variables.tf**: Declares variables for instance type, key name, public subnets, security group IDs, and tags.
- **modules/autoscaling/outputs.tf**: Outputs the auto-scaling group ID.

#### Load Balancer Module

- **modules/loadbalancer/main.tf**: Sets up an application load balancer, target group, and listener.
- **modules/loadbalancer/variables.tf**: Declares variables for VPC ID and public subnets.
- **modules/loadbalancer/outputs.tf**: Outputs the DNS name of the load balancer.

#### CloudFront Module

- **modules/cloudfront/main.tf**: Configures a CloudFront distribution to serve the WordPress site.
- **modules/cloudfront/variables.tf**: Declares a variable for the ACM certificate ARN.
- **modules/cloudfront/outputs.tf**: Outputs the CloudFront domain name.

#### RDS Module

- **modules/rds/main.tf**: Sets up an RDS MySQL instance for the WordPress database.
- **modules/rds/variables.tf**: Declares variables for the database username, password, private subnets, and VPC ID.
- **modules/rds/outputs.tf**: Outputs the RDS endpoint.

#### Route 53 Module

- **modules/route53/main.tf**: Creates a Route 53 hosted zone and a DNS record for the CloudFront distribution.
- **modules/route53/variables.tf**: Declares a variable for the domain name.
- **modules/route53/outputs.tf**: Outputs the Route 53 zone ID.

#### Bastion Module

- **modules/bastion/main.tf**: Defines a bastion host for secure SSH access.
- **modules/bastion/variables.tf**: Declares variables for instance type, key name, public subnet ID, VPC ID, and tags.
- **modules/bastion/outputs.tf**: Outputs the public IP of the bastion host.

#### EFS Module

- **modules/efs/main.tf**: Sets up an EFS file system for shared storage and creates mount targets.
- **modules/efs/variables.tf**: Declares variables for subnet IDs, VPC ID, and tags.
- **modules/efs/outputs.tf**: Outputs the EFS ID.

## How to Deploy

1. **Initialize Terraform**:
    ```sh
    terraform init
    ```

2. **Review the Plan**:
    ```sh
    terraform plan
    ```

3. **Apply the Configuration**:
    ```sh
    terraform apply
    ```

This configuration follows best practices for security, scalability, and maintainability in a production environment. Make sure to customize the variables and configuration as needed for your specific use case.
