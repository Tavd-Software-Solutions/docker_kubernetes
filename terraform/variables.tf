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
  default = "ASIAQZMHI4CLDCSQXYVP"
}

variable "secret_key" {
  type    = string
  default = "Ik28iPIAzyWXpbZw+Dsd8UpKOcWq/s8WGnv75hHN"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEEAaDCn9iMCR0A2Y2Q+jCiLDAWItwFfrFUZtSxJX/7NgkeF1Y3shr99hatxQZtb6IAKjTFYXBZCmVW9/XsqsL8k3CI/KL86d1OP6PzosYPNFHvxw/VxQDuuzXbFecApZehvSmaoRFnfrPbj/QCIQe3AaLx8tpLi5x+dRdS7a+xkQueSQKLnbgr8+CjNpY67zBucxI6fbcYxMET/I0qzx/AU8KMj1OMdvvofQgL0DOSp4h7SRdQSz6h3VbE3W3TKFlvbnbAVXgkqiGbcyWNThwjRFFl+4oijv+sOrBjItuJIDYyWH9OhchgdZfpodeqZnZCT0YvrGK8MkaeStUe0HznKLioP68PS3oPb6"
}