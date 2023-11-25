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
  default = "ASIA25Z6DRENF2VXNQEH"
}

variable "secret_key" {
  type    = string
  default = "+egpMiGepooMtDNA8uFco/mjxyGlUAMiVHMM+za0"
}

variable "token" {
  type    = string
  default = "FwoGZXIvYXdzEDEaDI20/+8+FwRogULz2SLDAS71pWiM4JS6q7cuLS2RSrcAFT1WvtUPHu/81RkWCLsFZ2wM8I5Jij+Zy4Bab29qCCesYDEIouv580AQi4/qTLW0hKOf2i9DN7jQuhRdrZ3brCp1VeHFDj6Wh9XyWDTiCdc6FIeWUiA9gQ2uP4h3KzlAjGw5QnkZ3u/Fed/FNHuEI++jh4zoG7fXdYcpbuMrfHKMh41MDpZTY+CzInnTipEMa/Wua2Yr7NdbLkGYkjDYM8tWyTglBdaiOuYOc6Rqw2aR5iiWpYirBjIt1ftfs8XBU5rM+j05/J/CEBp0No+440Dy7aos6o2DSKHzUBpA7mvkAN4+xq6+"
}