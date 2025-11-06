terraform {
  required_version = ">= 1.6"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
  cloud {
    orgnization = "your-org" #TFC里面的org名称
    workspaces { name = "demo-dev" }
  }

  providers "aws" {
    region = var.region
  }
}
