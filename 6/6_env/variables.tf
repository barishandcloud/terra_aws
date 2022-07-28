### create variables for vpc##

variable "vpc1_cidr" {
  description = "vpc cidr"
  type        = string
}

variable "vpc1_name" {
  description = "vpc name"
  type        = string
}

variable "vpc1_ten" {
  description = "vpc tenancy"
  type        = string
}

##variables for subnet
variable "subnet1_list" {
  description = "subnet values"
  type = list(object({
    sub_name = string
    sub_cidr = string
  }))
}