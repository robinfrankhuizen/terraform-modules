terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "random" {}

module "names" {
  source      = "../"
  name_length = 16
}

output "result" {
  value = module.names.random_name
}