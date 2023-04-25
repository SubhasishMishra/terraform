terraform {
  backend "s3" {
    bucket = "businesscard-v1"
    key = "terraform/backend_ex_3"
    region = "ap-south-1"
  }
}