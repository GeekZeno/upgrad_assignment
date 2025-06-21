terraform {
  backend "s3" {
    bucket = "uptfbucket"
    key    = "terraform/state.tfstate"
    region = "us-east-1"
  }
}