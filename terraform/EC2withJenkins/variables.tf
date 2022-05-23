variable "region" {
  type    = "string"
  default = "ap-south-1"
}
variable "ami_id" {
  type = "map"
  default = {
    ap-south-1   = "ami-079b5e5b3971bd10d"
  }
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "key_name" {
  type    = "string"
  default = "Terraform"
}
