variable "name" {
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "attributes" {
  type    = "list"
  default = []
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`)"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "force_destroy" {
  description = "Destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices."
  default     = "false"
}

variable "path" {
  description = "Path in which to create the user"
  default     = "/"
}

variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "enable_key_generation" {
  description = "Set to false to prevent api key generation"
  default     = "true"
}
