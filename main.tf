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


resource "null_resource" "test" {
  count = 11

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
