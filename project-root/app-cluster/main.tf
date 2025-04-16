provider "aws" {
  region = var.aws_region
}

module "app_eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "app-cluster"
  cluster_version = "1.21"
  subnets         = var.private_subnets
  vpc_id          = var.vpc_id

  worker_groups = [
    {
      instance_type = "t3.medium"
      asg_max_size  = 5
    }
  ]

  tags = {
    Terraform = "true"
    Environment = "app"
  }
}
