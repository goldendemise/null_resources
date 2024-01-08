terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
    }
  }
}

provider "null" {
  # Configuration options
}

variable "myvar" {
}

output "myvar_output" {
  value = var.myvar
}

# test 1 
resource "null_resource" "test" {
  count = 25

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
