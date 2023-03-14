variable "subnets" {
  type    = list(string)
  default = ["subnet-0d12152c44c0f42da", "subnet-08ad2f85ff417d50f"]
}

variable "vpc_id" {
  type    = string
  default = "vpc-0695f9ea697843b29"
}

variable "cidr_block" {
  type    = string
  default = "0.0.0.0/0" #internet
}
