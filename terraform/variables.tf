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
  default = "ASIA25Z6DRENOK53JVS4"
}

variable "secret_key" {
  type    = string
  default = "5ozAL+i+reYdie9N4J7LnJMB3R9q1rtlkChK42PD"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEGgaDHUmIeTXkAcHUFav0yLDAQdYRMz3L75Uzhju+ziIXZ8ufb08QAQ2z4ziWAsqkw9ueGaVVJFovH8Su3+tBFNzCIGQnq9AXbaRaW9ApMLaiyNRD1i+mghw7LGs8TibpU8G1VkUoOElgNOKaKnEgkqv2om/aoAF7GsKwsqBryz1MzgQaxY6kUTJFgy6LwknlyTTVRrqOAjhg09VD3GBKQWRZd2NsM7bQ3Pr10A0o2HOYTthRONoXqlxyKVehx9KJh0BF5jmkql9OIkEHyjlvA0PpFN2JSjCp5SrBjItieML9agxAtZYqZuIFMyLjDA7uZ+0m8xafohS1pICxxaqgzWAiIiWESdP7lDs"
}