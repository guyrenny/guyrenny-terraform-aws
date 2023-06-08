terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "firehose" {
  source = "../../modules/firehose"

  coralogix_region   = "Europe"
  private_key        = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXX"
  firehose_stream    = "test-stream"
}
