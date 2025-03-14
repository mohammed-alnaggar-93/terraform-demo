provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = false
  enable_dns_support   = true

  tags = {
    Name        = "example-${var.environment}-vpc"
    Environment = var.environment
  }
}
