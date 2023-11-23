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
  default = "ASIA25Z6DRENO42QU4UF"
}

variable "secret_key" {
  type    = string
  default = "WyDgbqqaq+4X/pjGoxZgXjl9pYUm0Bw2sj00c5ie"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEHkaDEDEV6oMKcqR6TOeGyLDAdoHbYgQ/fmKari1vr8I6MCGYNfDXHS1gSC3rxmX8ktbmjwFMV/PZx8a9DmgzIWXVUDqGDdn/K/T5hbs/GmsIQG0AvCNrToIKPrLxgaE0GaELBx9rZRxDyelXOdjdFCtZ+5RKH9JUk6DkU73yU1cX6byY+vEtBAs1tT2s3hy1XZ5w5tZukBu+7fZC19S/xiV3T/q0DOeUmfsMj4Lk8ofkemMuf8dlAIlD60aADKkxG7FVJUycTgryTvs42cWW4MDwXOevijU8t+qBjItqKAvj/J5dqztBZ5u2Gv42QzUcTPTFzPnb2DvBS0h1lvZX7fcg79K34qOu1si"
}