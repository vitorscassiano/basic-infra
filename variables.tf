variable "instance_name" {
  default = "awesome-instance-name" 
}
variable "instance_ami" {
  type = "map"
  default = {
    "development" = "ami-0cda1a331a81a53e0"
    "default" = "ami-0e3f3219b447ef1af"
  }
}

variable "volume_size" {
  type = "map"
  default = {
    "development" = 10
    "default" = 100
  }
}

variable "instance_type" {
  type = "map"
  default = {
    "development" = "r4.2xlarge"
    "default" = "r5.12xlarge"
    # "default" = "c5.12xlarge"
  }
}
variable "security_groups" {
  type = "list"
  default = [
    ""
  ]
}
variable "route_id" {
  default = ""
}

variable "subnets" {
  default = ""
}
variable "key_name" {
  default = "" # Your ssh key-name
}