provider "aws" {
   region = "eu-west-1"
   #maybe
   # access_key = "anaccesskey" (if you want to hardcode keys)
   # secret_key = "asecretkey"
   #or
   # shared_credentials_file  = "/Users/tf_user/.aws/creds"
   # profile                  = "customprofile"
   shared_credentials_file  = "/Users/jamesliu/.aws/credentials"
   profile                  = "hotmail"
}

variable "aws_region" {
  description = "The AWS region to work in."
  default = "eu-west-1"
}

variable "whitelisted_source" {
   description = "this is the public address of your PC"
   default = "85.255.235.215/32"
}

variable "ami" {
    #default = "ami-f9dd458a"
    #default =  "ami-13f84d60"
    default =  "ami-061b1560"
}

variable "ssh_key" {
  type = "map"

  default = {
    on_aws = "cloudera_training"
    local_file = "cloudera_training.key"
    rootdir = "/Users/jamesliu"
  }
}


variable "cidr_block" {
  description = "CIDR block you want to have in your VPC"
  default = "10.0.0.0/16"
}

variable "project" {
  description = "This is a project, jira_ticket or username"
  default = "hdp1"
}

variable "environment" {
  description = "Environment"
  default = "cls1"
}

#variable "cdh_sg_id" {
#  description = "We need this so we can reference 'self-ingress/egress rules'"
#  default = "sg-d12d34d5"
#}

variable "availability_zones" {
  description = "List of availability zones for the region"
  default = {
    az0 = "eu-west-1a"
    az1 = "eu-west-1b"
    az2 = "eu-west-1c"
  }
}

variable "sample_hostnames" {
  description = "List of sample userfriendly hostnames"
  default = {
    "0" = "elephant"
    "1" = "tiger"
    "2" = "horse"
    "3" = "monkey"
    "4" = "lion"
  }
}


variable "node_count" {
  type = "map"

  default = {
    bootstrap = 1
    master  = 1
    cluster  = 4
  }
}

variable "number_of_azs" {
  description = "How many Availability Zones we're building out to"
  default     = 3
}

variable "cidr_allocation_subnets" {
  description = "CIDR allocations for subnets"
  type = "map"
  default = {
    public0       = "10.0.1.0/24"
    public1       = "10.0.2.0/24"
    public2       = "10.0.3.0/24"
    private0      = "10.0.4.0/24"
    private1      = "10.0.5.0/24"
    private2      = "10.0.6.0/24"
  }
}

variable "instance_type" {
  description =  "AWS instance type"
  default = "t2.medium"
}
