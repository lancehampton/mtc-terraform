terraform {
  backend "remote" {
    organization = "lance-iac-dev"

    workspaces {
      name = "mtc-dev"
    }
  }
}