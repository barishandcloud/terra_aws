### create variables for vpc##

variable "demovpc1_cidr" {
  description = "subnet1 cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "demovpc1_name" {
  description = "subnet1 cidr"
  type        = string
  default     = "demovpc1"
}

variable "demovpc1_ten" {
  description = "subnet1 cidr"
  type        = string
  default     = "default"
}

##variables for subnet
variable "sub1_cidr" {
  description = "subnet1 cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "sub1_name" {
  description = "subnet1 name"
  type        = string
  default     = "demosubnet1"
}

#variable "subnet_list" {
#  description = "subnet values"
#  type = list(object({
#    sub_name = string
#    sub_cidr = string
#  }))
#}