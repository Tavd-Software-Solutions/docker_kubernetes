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
  default = "ASIA25Z6DRENKHTSUO3K"
}

variable "secret_key" {
  type    = string
  default = "DGOmey+SaBQWd8mPx6cU8WxUXh3p5KLxo76vntnt"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEIH//////////wEaDM+2bz6piA++3fVP6SLDATFOZjUP9e2fNxsgneUCbwQV+gx13AryhHCgq2/nZreZ6HQuEHlHyrLYsDIL94oF2/MjeFgKVZfQyHoOtAdGmcdkGEtE0t/NbZg1Jh4wlnD5r3eBZnSS22eghkfhRrXk3g8hKzkzIVtyZpb2JVn5ZgWXWbv+pWkhqhG/fJlSmXlR7/L0ZzcsKRJgsFhXcKho8E9cze/nP0837zOO1vll1VCpdNSJ2USeWpdgVSdZn+yeIoLxtNaim7CuP6at+q6yC1VvoCiq9ZmrBjIt0FwMpABkiEc25TOYLjSgZfXP1I0kRGYcSBofYFHA653+0BGa9iqfU1BpdobE"
}