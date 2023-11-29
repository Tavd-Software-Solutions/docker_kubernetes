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
  default = "ASIA25Z6DRENG3XGWR6T"
}

variable "secret_key" {
  type    = string
  default = "51NWS2BuBoUD67QdS41xjUoStbuUocUH62+1fdPx"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEIX//////////wEaDJ1u0ldvxy8LYIA5wyLDAbPFz1rmV4J6OH/G/iG6FzOe4jPSh80ip2reQiMfJaz3B45sERS6OLTBN6J9JFhoCREMYpuZoNa1G4uYnEJu4X+uzA1ROipuHM72NAejhu4xWw83ez5zKapjKNQlj06HuH+ClVJgfqmUwOjpxbtOZMPrV+URzkaUkykAGtvP926G7xW1zOSmrMQYDsSRxEbDAMzlpEBa4k9r4BaoCUbYJVimU6nEBV31WqLykPuCIMO6LixArPIxJ07IJ93YkGsblCF2GyjT7ZqrBjItjx00Sf5he3pMyEQQkdQ1z73zjMB+SGYDKHhpLtp5dtbr5obeR6fV9wMfWwbC"
}