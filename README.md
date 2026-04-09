# 🚀 Terraform AWS EC2 & VPC Infrastructure

## 📌 Overview
This repository demonstrates the use of **Terraform** to provision and manage **AWS infrastructure** using **Infrastructure as Code (IaC)** principles. The project automates the creation of a secure and scalable **Virtual Private Cloud (VPC)** along with an **EC2 instance**, following industry best practices.

This project is designed as a **DevOps portfolio** to showcase hands-on experience with cloud provisioning, modular Terraform design, and automation.

---

## 🏗️ Architecture
The infrastructure created by this project includes:

- Custom **VPC**
- **Public and Private Subnets**
- **Internet Gateway**
- **Route Tables** and associations
- **Security Groups** for controlled access
- **EC2 Instance** in the public subnet
- Optional **S3 Backend** with **DynamoDB** for remote state management

------------------

             +---------------------------+
             |        AWS Cloud          |
             +---------------------------+
                       |
                       v
                 +-----------+
                 |    VPC    |
                 +-----------+
                 /           \
        +---------------+   +---------------+
        | Public Subnet |   | Private Subnet|
        +---------------+   +---------------+
                |
                v
        +----------------+
        |  Internet GW   |
        +----------------+
                |
                v
          +-----------+
          |   EC2     |
          +-----------+

          ------------------------


          
---

## 📂 Repository Structure

```bash
terraform-aws-ec2-vpc/
│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   └── prod/
│       ├── main.tf
│       ├── terraform.tfvars
│       └── backend.tf
│
├── provider.tf
├── variables.tf
├── outputs.tf
├── .gitignore
└── README.md
