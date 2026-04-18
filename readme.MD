#Terraform AWS EC2

##Arguement
ami_id - (Mandatory) User much provide AMI ID. This is in string format

instance_type = Optional, default is t3.micro

security_group_ids = User must provide list of SG Ids


## Outputs

public_ip = Public ip of the aws instance created

private_ip = private ip of the aws instance created

instance_id = Instance id of the instance created

