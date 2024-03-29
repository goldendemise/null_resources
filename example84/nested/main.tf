terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "sean-env"

    workspaces {
      name = "null_resources"
    }
  }
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}
# example 1 directory

provider "null" {
  # Configuration options
}

variable "myvar" {
}

output "myvar_output" {
  value = var.myvar
}


resource "null_resource" "test" {
  count = 30

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
