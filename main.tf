terraform {
  # backend "s3" {
  #   bucket         = "s3statebucket123456"
  #   dynamodb_table = "terraform-state-lock"
  #   key            = "terraform.tfstate"
  #   region         = "ap-southeast-2"
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}


# ECS module
module "ecs" {
  source = "./modules/ecs"
}
