variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags to apply to the Resource Group"
  type        = map(string)
  default     = {}
}
