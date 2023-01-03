terraform {
  required_version = ">=0.13.0"
  required_providers {
    christmas-tree = {
      source = "cappyzawa/christmas-tree"
      version = ">= 0.3.0"
    }
    random = {
      version = ">= 3.0.0"
    }
  }
}
