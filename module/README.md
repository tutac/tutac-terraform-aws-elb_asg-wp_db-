# terraform WordPress and MariaDB module

This module will create a WordPress Server and MariaDB instance on public subnet in  provided VPC


```
module "VPC" {
  source              = "../"
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