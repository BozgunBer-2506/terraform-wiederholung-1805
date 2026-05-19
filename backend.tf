terraform {
  backend "s3" {
    bucket = "terraform-wiederholung-state-bozgun"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}
