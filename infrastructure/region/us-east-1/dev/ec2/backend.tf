terraform {
  backend "s3" {
    bucket         = "rosi-s3"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rosi_state_lock" #dynamodb_table for the state locking
    encrypt        = true
  }
}