provider "aws" {
  shared_credentials_file = "/home/o-linux/Dropbox/Terraform/AWS-fargate-Autoscaling/.credentials"
  profile                 = "default"
  region                  = var.aws_region
}