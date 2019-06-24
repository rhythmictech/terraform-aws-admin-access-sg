variable "allowed_admin_cidrs" {
  type        = list(string)
  default     = []
  description = "List of CIDRs allowed admin access"
}

variable "namespace" {
  type    = string
  default = ""
}

variable "stage" {
  type = string
}

variable "owner" {
  type    = string
  default = ""
}

variable "vpc_id" {
  type = string
}

