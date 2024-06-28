terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

resource "random_integer" "random_number" {
  min = var.min_number
  max = var.max_number
}
