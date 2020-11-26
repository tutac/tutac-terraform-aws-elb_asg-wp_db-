# terraform WordPress and MariaDB module

This module will create a WordPress Server ASG and MariaDB ASG on public subnet in  provided VPC


```
module "ASG" {
  source              = "../"
  region              = "${var.region}"
  cidr_block          = "${var.cidr_block }"
  private_cidr_block1 = "${var.private_cidr_block1}"
  private_cidr_block2 = "${var.private_cidr_block2}"
  private_cidr_block3 = "${var.private_cidr_block3}"
  public_cidr_block1  = "${var.public_cidr_block1}"
  public_cidr_block2  = "${var.public_cidr_block2}"
  public_cidr_block3  = "${var.public_cidr_block3}"
  ami_id              = "${var.ami_id}"              //"ami-0803852886467f7bb"
  ami_id_DB           = "${var.ami_id_DB}"

  instance_type = "${var.instance_type}"

  tags = "${var.tags}"
}


```
### Create "regions" folder. Inside "regions" create following files with needed content :
* Virginia.tfvars
```
region = "us-east-1"

idr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
ami_id              = "Your_AMI"
instance_type       = "t2.micro"
ami_id_DB           =  "Your_AMI"


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

idr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
ami_id              = "Your_AMI"
instance_type       = "t2.micro"
ami_id_DB           =  "Your_AMI"


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

idr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
ami_id              = "Your_AMI"
instance_type       = "t2.micro"
ami_id_DB           =  "Your_AMI"


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

idr_block          = "10.0.0.0/16"
private_cidr_block1 = "10.0.1.0/24"
private_cidr_block2 = "10.0.2.0/24"
private_cidr_block3 = "10.0.3.0/24"
public_cidr_block1  = "10.0.101.0/24"
public_cidr_block2  = "10.0.102.0/24"
public_cidr_block3  = "10.0.103.0/24"
ami_id              = "Your_AMI"
instance_type       = "t2.micro"
ami_id_DB           =  "Your_AMI"

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
variable "instance_types" {}


variable "tags" {
  type = "map"
}

```
 
### Use following command to run this module:
    * terraform apply -var-file region/Virginia.tfvars
    * terraform apply -var-file region/Ohio.tfvars
    * terraform apply -var-file region/Oregon.tfvars
    * terraform apply -var-file region/California.tfvars
