# Define the required provider
terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "2.9.0" # Specify the provider version
    }
  }
}

# Configure the Confluent provider with API credentials
provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key    # Use environment variable or define in variables
  cloud_api_secret = var.confluent_cloud_api_secret # Use environment variable or define in variables
}

# Create a service account
resource "confluent_service_account" "my_service_account" {
  display_name = "my-service-account"
  description  = "Service account for managing resources"
}
