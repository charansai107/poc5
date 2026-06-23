module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.30"

  vpc_id = "vpc-0135e04a1e7035cb5"

  subnet_ids = [
    "
subnet-0aec3c443b30866e9",
    "
subnet-03698344e03ade6f4",
    "
subnet-0c3213d89a8a0a0bc"
  ]

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      min_size     = 1
      max_size     = 2

      instance_types = ["t3.medium"]
    }
  }
}
