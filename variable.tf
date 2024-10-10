variable "region" {
  description = "AWS region"
}

variable "vpc-cidr" {
  description = "CIDR block for the VPC"
}

variable "vpc-name" {
  description = "Name for the VPC"
}

variable "subnet1-az" {
  description = "Availability zone for subnet 1"
}

variable "subnet2-az" {
  description = "Availability zone for subnet 2"
}

variable "pub-subnet1-cidr" {
  description = "CIDR block for public subnet 1"
}

variable "pub-subnet2-cidr" {
  description = "CIDR block for public subnet 2"
}

variable "pri-subnet1-cidr" {
  description = "CIDR block for private subnet 1"
}

variable "pri-subnet2-cidr" {
  description = "CIDR block for private subnet 2"
}

variable "ig-name" {
  description = "Name for the internet gateway"
}

variable "pub-rt-name" {
  description = "Name for the public route table"
}

variable "db-subnet" {
  description = "Name for the DB subnet group"
}

variable "db-username" {
  description = "Username for the database"
}

variable "db-password" {
  description = "Password for the database"
}

variable "lb-sg-name" {
  description = "Name for the load balancer security group"
}

variable "sg-name" {
  description = "Name for the security group"
}

variable "tg-name" {
  description = "Name for the target group"
}
variable "db-sg-name" {
  description = "Name for the database security group"
}
variable "ami-id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance-type" {
  description = "Instance type for the EC2 instance"
}
