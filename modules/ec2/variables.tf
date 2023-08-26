variable "name" {
  type = string
}

variable "type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {
    Terraform : "True",
    Description : "Use-case-18"
  }
}
