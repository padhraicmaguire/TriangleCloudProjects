variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 18.04 LTS" // https://cloud-images.ubuntu.com/locator/ec2
  default     = "ami-0f38cdec7da648424"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default     = "t2.micro"
}

variable "name" {
  description = "TFE_Deployment"
  default     = "TFE_Deployment"
}

variable "owner" {
  description = "Owner"
  default     = "Padhraic_Maguire"
}

variable "key_name" {
  description = "key name"
  default     = "mykeys"
}

variable "ttl" {
  description = "A desired time to live (not enforced via terraform)"
  default     = "-1"
}

variable "user_data" {
  description = "A user data script"
  default     = "./user-data/user_data.sh"

  # default     = "cd /tmp && echo \"Provisioned by Terraform\" > user_data.txt"
}

variable subnet_id {
  description = "default subnet for EC2 instance within specified VPC"
  default     = "subnet-0ef9e96b"
}

variable "security_group_id" {
  type    = list(string)
  default = ["sg-adf4b6c9"]
}
