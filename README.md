# Multi AZ Server Architecture
This Terraform deployment contains a Multi AZ server deployed using a custom AMI based on Ubuntu 20.04.

## Tech Stacks Used
- Terraform: A tool for building, changing, and versioning infrastructure safely and efficiently.
- AMI: Amazon Machine Image, a pre-configured virtual machine image used to create EC2 instances.
- EC2: Amazon Elastic Compute Cloud, a web service that provides resizable compute capacity in the cloud.
- Security Group: A virtual firewall that controls inbound and outbound traffic for an EC2 instance.
- Application Load Balancer: A service that routes incoming traffic to different EC2 instances based on the rules defined.

## Features
- :repeat: Multi AZ deployment: The infrastructure is deployed in multiple availability zones for high availability and fault tolerance.
- :balance_scale: Load Balancing: The Application Load Balancer balances incoming traffic and distributes it to the appropriate target group, making the infrastructure highly scalable and efficient.
- :rocket: Highly Available: The infrastructure is designed for high availability to ensure that the application is always available to users.


This deployment assumes you have access to the AMI (ami-08ca454a0159c3c19) deployed in us-east-1 (N. Virginia).

For suggestions or feedback, feel free to contact me at akashawase@gmail.com.
