### create variables for vpc##

variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string
}

variable "vpc_name" {
  description = "vpc name"
  type        = string
}

variable "vpc_ten" {
  description = "vpc tenancy"
  type        = string
}
