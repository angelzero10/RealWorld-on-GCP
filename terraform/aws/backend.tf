terraform {
  backend "s3" {
    bucket = "personal-back"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}