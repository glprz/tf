terraform {
  required_providers {
    mgc = {
      source = "MagaluCloud/mgc"
      version = "0.32.2"
    }
  }
}

provider "mgc" {
  api_key = var.api_key
}