variable "vpc_name" {
    type = string
  
}

variable "vpc_cidr" {
    description = "CIDR block for the vpc"
    type = string

}

variable "public_subnets" {
    description = "List of public subnets"
    type = list(string)
  
}

