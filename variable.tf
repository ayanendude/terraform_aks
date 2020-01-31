variable "rgname" {
  description = "Name of resource group"
  type        = string
  default     = "rgtest"
}

variable "location" {
  description = "Location"
  type        = string
  default     = "eastus"
}

variable "subscription_id" {
  description = "subscription_id"
  type        = string
}

variable "tenant_id" {
  description = "tenantid"
  type        = string
}

variable "client_id" {
  description = "client_id"
  type        = string
}

variable "client_secret" {
  description = "client_secret"
  type        = string
}

