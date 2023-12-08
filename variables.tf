variable "vpc_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_subnet1_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vpc_subnet2_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.2.0/24"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "vpc"
}
