terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
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
  count = 5

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
