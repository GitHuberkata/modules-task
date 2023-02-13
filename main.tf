provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

module "keypair-west" {
  source = "../working-with-modules/modules"
  providers = { aws = aws.west
  }

}

module "keypair-east" {
  source = "../working-with-modules/modules"
  providers = { aws = aws.east
  }
}


