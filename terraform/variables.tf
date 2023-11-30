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
  default = "ASIA25Z6DRENAASNSPKX"
}

variable "secret_key" {
  type    = string
  default = "/AvOX+/bMhETSd53V0gmWj1hxwbIROPbFHfihIqT"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzELD//////////wEaDPoQU5X8P9Gg1XN7liLDAdytpMhL5H438FwyATYYk/KTtXI2gTLLCm/qn8H1zvOET//qJ2FfvFn0K/samsXl8aAsGvAotqfQYp4S1x5LZD404fOYFpjPyZ3m5Zt2uI10igDvkAO6kDe/RKS42lG64jouNLp5mK2hwoFeaQ2O1SzOcshRETSwHUvd6ynTCmXtezBkg/UJgHU9DtzQfQ/35+1gKqoOQddH2mU5dxVEkRBOIlrnUUOT8nPd1at9klG0sfc6OmSTbN5ShiZ23PZeBZq9HCiQkqSrBjIt38IPAK5lVAhAi7PXg2eWMCn35cqexJ9HqeGun90dQlExTTD+YBHwZQkeHJCF"
}