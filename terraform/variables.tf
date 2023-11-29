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
  default = "ASIA25Z6DRENGW332I4Q"
}

variable "secret_key" {
  type    = string
  default = "RR6NloZNqUoN3dgS5G/jvOcIPSb5/rdYFMKa+wz8"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEJj//////////wEaDKE1GpFQOPjS2vOx5iLDAXfxizB9Zak/zhbkn42TlqnQevSj1XnDOSt29QRknPfX1XLbXX+bDmBw2zJ0UTsD+A/TfyR7OuN2HBdTIdTtXmN5GasRelxIgdo5Qi8D/bkNE6ji/6drNM7Wbmv+nYn0Nznc0VJyjF9OLAOpwNxTalv+eklt8HFnPUSZgh0rUXLEB/KvXIkSv8Y8S/Z8OQ/cJsvdCjOmQ28KObH1F7rnyscGuaNxXAmsRMTxHxvBfIrzEBlY4hcHrxQDM5Rbg+1diPyPvSi+856rBjIt5N3r3DomK5tM+o8NCFuqT0wiMxPbTD8uc1RyHjCGzIX6hYuE3UKvCbz9bdpQ"
}