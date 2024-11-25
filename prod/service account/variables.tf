# variables.tf

# Variable for Confluent Cloud API Key
variable "confluent_cloud_api_key" {
  description = "The API key for Confluent Cloud"
  type        = string
  sensitive   = true
}

# Variable for Confluent Cloud API Secret
variable "confluent_cloud_api_secret" {
  description = "The API secret for Confluent Cloud"
  type        = string
  sensitive   = true
}
