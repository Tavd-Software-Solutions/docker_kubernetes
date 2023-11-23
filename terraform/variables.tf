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
  default = "ASIA25Z6DRENPATP4LXW"
}

variable "secret_key" {
  type    = string
  default = "7p5vOGBHMh94LAHBsH1UOnFD16ndVJPNKDaLKS7/"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEAgaDDSMUrvbSKwWtj+hFyLDAV7mTXyZuHpM3v+zFCxx0Zvpj18dP2UYl4RtbiQ7NPP8O5Xmzyk5gWtvNBEzOh1zhvzV4yxZlvzb5M6k0TFJ2hyl3xJbNaLcQjYgontC9ER7WWErVd1jH+QVtxBZl6Gad5/4g8NUSf9DuEViAeA0j02GtXbrdH+pAznggbHHrjayyTHlldFNQ89Hkp8uKepiNauns0H52Qpyky+ukajqZbR8+UaH75r2AwuSifzN8xSyZgl8M2bx1S9FYwl6WZdmCnXbmiiiqv+qBjIt2y8hfBE7IgcZPvHmPNGtUJ/vHMesbBl+2Cs/JieJna2Ijdka9tVmXc+4gaxu"
}