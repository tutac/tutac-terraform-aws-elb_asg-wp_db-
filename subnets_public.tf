resource "aws_subnet" "pub_sub_101" {
  vpc_id                  = "${aws_vpc.WP_DB_vpc.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block1}"
  tags                    = "${var.tags}"
  availability_zone       = "${var.region}a"
}

resource "aws_subnet" "pub_sub_102" {
  vpc_id                  = "${aws_vpc.WP_DB_vpc.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block2}"
  tags                    = "${var.tags}"
  availability_zone       = "${var.region}b"
}

resource "aws_subnet" "pub_sub_103" {
  vpc_id                  = "${aws_vpc.WP_DB_vpc.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${var.public_cidr_block3}"
  tags                    = "${var.tags}"
  availability_zone       = "${var.region}c"
}
