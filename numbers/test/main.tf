terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "random" {}

module "numbers" {
  source     = "../"
  min_number = 5
  max_number = 5
}

output "result" {
  value = module.numbers.random_number
}