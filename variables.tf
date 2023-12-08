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
  default = "ASIAQZMHI4CLCXCPMV4S"
}

variable "secret_key" {
  type    = string
  default = "wg270Lz4EzEGmSHAsV0hhavwQlU36GI30sgYulrM"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEF0aDPfgG54ORcrlEqv2VyLDAU8CViYxMHGNCeBygNfAkbOr4urmWmTW6FI2VSoJbqvm5QnsNkf17Ys2zwTPba1CxUYFUxQ04QmEt/vEng+4OSVorBIEuyaeZbYwprJ+ysWOaPknOVF3WSEgTppoPcjVH6az3UUAlM1/NqtRcpaFF6hWtb57c3eNiv+g9J1m3D3YhP0hNe+c9X0TzFWjPsXsH2Z+u3DUcuHJt8KQEJ3X8l8j2qd0yMxcWM+HNcstCHDYqtc9EgmmUilfaMlgIPU4owT4Myizl8qrBjIt0cgDjjKNUN05LcfqqqUBjlcecPpAHwuxnw8RToZhw6XUDN6wuysDatDZWY96"
}