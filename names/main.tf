terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

resource "random_string" "random_name" {
  length  = var.name_length
  special = false
}