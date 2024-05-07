terraform {
  backend "s3" {
    bucket = "eks-test-patkhai"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
