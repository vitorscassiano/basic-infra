terraform {
  backend "s3" {
    bucket                  = "prod-awesome-team-terraform-tfstate" # Suggestion: prod-{awesome-team}-terraform-tfstate
    key                     = "awesome-product.tfstate" # Suggestion: {awesome-product}.tfstate
    region                  = "us-east-1"
    shared_credentials_file = "credentials"
    profile                 = "default"
  }
}