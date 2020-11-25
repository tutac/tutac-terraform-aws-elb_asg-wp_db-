# terraform WordPress and MariaDB module

This module will create a WordPress Server and MariaDB instance on public subnet in  provided VPC


```
module "VPC" {
  source              = "vrodi18/vpc-WordPress-MariaDB/aws"
  region              = "${var.region}"
  cidr_block          = "${var.cidr_block }"
  private_cidr_block1 = "${var.private_cidr_block1}"
  private_cidr_block2 = "${var.private_cidr_block2}"
  private_cidr_block3 = "${var.private_cidr_block3}"
  public_cidr_block1  = "${var.public_cidr_block1}"
  public_cidr_block2  = "${var.public_cidr_block2}"
  public_cidr_block3  = "${var.public_cidr_block3}"
  instance_type_wp    = "${var.instance_type_wp}"
  instance_type_db    = "${var.instance_type_db}"

  tags = "${var.tags}"
}

```
### Create "regions" folder. Inside "regions" create following files with needed content :
* Virginia.tfvars
```
region = "us-east-1"

cidr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
instance_type_wp    = "t2.micro"
instance_type_db    = "t3.micro"

tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    Created_by        = "Vladlen Rodionov"
    
  }
```
* Ohio.tfvars
```
region = "us-east-2"

cidr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
instance_type_wp    = "t2.micro"
instance_type_db    = "t3.micro"

tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    Created_by        = "Vladlen Rodionov"
    
  }
```
* California.tfvars
```
region = "us-west-1"

cidr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
instance_type_wp    = "t2.micro"
instance_type_db    = "t3.micro"

tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    Created_by        = "Vladlen Rodionov"
    
  }
```
* Oregon.tfvars
```
region = "us-west-2"

cidr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
instance_type_wp    = "t2.micro"
instance_type_db    = "t3.micro"

tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "Infrastrucure"
    Department  = "IT"
    Created_by        = "Vladlen Rodionov"
    
  }
```
### Create a "variables.tf" file with following content:
```
variable "region" {}
variable "cidr_block" {}
variable "private_cidr_block1" {}
variable "private_cidr_block2" {}
variable "private_cidr_block3" {}
variable "public_cidr_block1" {}
variable "public_cidr_block2" {}
variable "public_cidr_block3" {}
variable "instance_type_wp" {}
variable "instance_type_db" {}

variable "tags" {
  type = "map"
}

```
 
### Use following command to run this module:
    * terraform apply -var-file region/Virginia.tfvars
    * terraform apply -var-file region/Ohio.tfvars
    * terraform apply -var-file region/Oregon.tfvars
    * terraform apply -var-file region/California.tfvars


### Get the output

```
output "vpc_id" {
  value = "${module.VPC.vpc_id}"
}


output "public_subnet1" {
  value = "${module.VPC.public_subnet1}"
}

output "public_subnet2" {
  value = "${module.VPC.public_subnet2}"
}

output "public_subnet3" {
  value = "${module.VPC.public_subnet3}"
}

output "DB_subnet" {
  value = "${module.VPC.DB_subnet}"
}

output "WordpressServer_subnet" {
  value = "${module.VPC.WordPress_subnet}"
}

output "tags" {
  value = "${module.VPC.tags}"
}

```