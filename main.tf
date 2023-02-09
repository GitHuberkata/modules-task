terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

module "modules" {
    source = "../working-with-modules/modules"
}



