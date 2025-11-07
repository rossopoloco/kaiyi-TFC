terraform {
  required_version = ">= 1.6"

  cloud {
    organization = "rosso"       # TFC 左上角 org 名
    workspaces {
      name = "kaiyi-TFC"         # 和你刚建的 workspace 名一致
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

variable "region" {
  type    = string
  default = "ap-northeast-1"
}

provider "aws" {
  region = var.region
}

