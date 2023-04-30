variable "region" {
  default = "us-east-1"
}

variable "amiid" {
  default = "ami-03c7d01cf4dedc891"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "key" {
  default = "today"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "publicsubnet_cidr" {
  default = "10.0.1.0/24"
}
variable "privatesubnet_cidr" {
  default = "10.0.2.0/24"
}
variable "route" {
  default = "0.0.0.0/0"
}
variable "availability_zone_privsub" {
  default = "us-east-1b"
}
variable "availability_zone_pubsub" {
  default = "us-east-1a"
}
