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
