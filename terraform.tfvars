# ============================================================
# terraform.tfvars  — customise these values before applying
# ============================================================

aws_region   = "us-east-1"
project_name = "myproject"

vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]

enable_nat_gateway = true

instance_type    = "t3.micro"
root_volume_size = 20

# Path to your SSH public key — comment out if not needed
# public_key_path = "~/.ssh/id_rsa.pub"

# ⚠️  Replace with your own IP for production use
allowed_ssh_cidrs = ["0.0.0.0/0"]

common_tags = {
  Project     = "myproject"
  Environment = "dev"
  ManagedBy   = "terraform"
}
