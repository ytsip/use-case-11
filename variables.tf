variable "azs" {
  default = ["us-east-1a"]
}

variable "instances" {
  default = {
    public : true,
    private : false
  }
}

variable "tags" {
  default = {
    Terraform : "true",
    Description : "use-case-18"
  }
}
