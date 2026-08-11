terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "practice" {
  filename = "${path.module}/hello.txt"
  content  = var.message
}