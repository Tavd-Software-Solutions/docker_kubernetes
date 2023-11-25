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
  default = "ASIA25Z6DRENP75KKDQS"
}

variable "secret_key" {
  type    = string
  default = "SO1anSfntjlpvV9+IpFnEsdjkV77We72EdjrTNhZ"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzECQaDLR7oa+RPtv1XdmiyCLDAW0gTFRqBW9m4TUNzkDoMcOCRbpolqC+sQWxk/k4S+e5jfce4Ox3qoMlajdUFopSI60fp1YILHHlg5qugSdpxOahTZin3/lS7u3LW84yGXvCXcqb9P1GLkVbhJ9lc2tTTVPp0ddJZ4iKeHNGmecNqq8y/pssE9XwORalC2fPeLxgZtcCEMbMuQtJDpAT6unE3Z4eGAYEUFtsxh1HpR7C2BicOwloBnCkH4YvPKig8Ylz4Ya4r7CxWOLKR1hzqr/kQAMUqCi7rIWrBjItByydykCiHYvVxxxeudtMQ3Cta1N9h6Gmi8OnuC+aG7c2mCTg4wjsOCWzR/e+"
}