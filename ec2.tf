resource "aws_instance" "aws_instance" {
ami = var.ami_id # Amazon Linux AMI
instance_type = var.instance_type
vpc_security_group_ids = [aws_security_group.terraform_aws_security_group.id]

}


resource "aws_security_group" "terraform_aws_security_group" {
  name        = "allow_ssh_terraformv2"
  description = "allow port number 22 for ssh access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}