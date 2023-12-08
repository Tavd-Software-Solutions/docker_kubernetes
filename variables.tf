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
  default = "ASIAQZMHI4CLKL3KIO5D"
}

variable "secret_key" {
  type    = string
  default = "CT6kRZJj2SsJQIr3t1K7VZt33eIkXBEvj58boR4a"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEGQaDJfXEsx3G+nqB4ZbpCLDAeAlH1yWj+UfXSQWCYyJKRTtEzMDlPUgP6pG5FZyc2sdiYgfM1jV5ds5JJAVbu6gBkkgGgrDlqjxoXoez3yysJrILIDvWCRWykciVwauYhX1nVd8kwfyverblWn9P4cC7cziBn+WZk3UnaBGr+7UQFQBjX8M/x4Qj5p6OsfD8gOzS6DMLkUJog0TUMgjmnLKTREWoMG7aTo1AAGx7yr+WVf1XEVuutKbTuE2ndP8mgi2aXdwCiR/ZhaOVoOXsgfCOytCQyjn5MurBjItOTYAthHJREQxP7RZ0OVf+IhiQyTI8AEFUKttp1bfLJpcHBua7f0a41esXYyk"
}