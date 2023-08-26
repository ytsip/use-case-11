terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "uc18-tf-state"
    key    = "uc18.tfstate"
    region = "us-east-1"
  }
}
