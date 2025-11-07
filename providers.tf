terraform {
  required_version = ">= 1.6"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
  cloud {
    orgnization = "rosso" #TFC里面的org名称
    workspaces { name = "kaiyi-TFC" }
  }

  providers "aws" {
    region = var.region
  }
}
