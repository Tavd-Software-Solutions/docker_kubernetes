variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

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

variable "access_key" {
  type    = string
  default = "ASIAQZMHI4CLNIEWEPUX"
}

variable "secret_key" {
  type    = string
  default = "YjFcSthptv8Q4699FOGDclEBANVkou2+y0Fyl8pX"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEFkaDM4WnPnfZZCMhVQrQyLDAfxAYFgNDRZOiKRLaDYGJ2A7yvEbf4Ku7uSv6Gm7+cSQCL1ptHPI9fA9fGyjeIGBOB/yNN8bBIYYU1gFWek/Lit3XTdchMYSHJSSHRjRCf2jJr9r+sUL89bxBWJUfUub3t2eY6wsIxayLjiTdjq8l20ceceTdlp3lmrTzRmK9Il9QPB9zzVy1vMESZPff2ABRyfrPOakvv7zi+BHTj4cCq6dOvUfhlgadv482fjgPGl1DYGEwUJ7n88yEkWTxAByZUk0myj8pcmrBjItTrMdHcRE7lk1RbHX0g4woywdI6KC9ykyT+2B4tVERaoxeqS+RQAuPSD1s294"
}