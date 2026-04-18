#mandatory,User should supply
variable "ami_id" {
  type = string
  #default = "ami-0220d79f3f480ecf5"
}

#optional ,default value is t3.micro user can always override
variable "instance_type" {
  type = string
  default = "t3.micro"
 validation {
condition = contains(["t3.micro", "t3.small", "t3.medium"], var.region)
error_message = "Instance type can only be t3.micro,t3.medium,t3.small"
}
}

#mandatory
variable "vpc_security_group_ids" {
  type=list(string)
}