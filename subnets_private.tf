resource "aws_subnet" "private_subnet1" {
  vpc_id            = "${aws_vpc.WP_DB_vpc.id}"
  cidr_block        = "${var.private_cidr_block1}"
  tags              = "${var.tags}"
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = "${aws_vpc.WP_DB_vpc.id}"
  cidr_block        = "${var.private_cidr_block2}"
  tags              = "${var.tags}"
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "private_subnet3" {
  vpc_id            = "${aws_vpc.WP_DB_vpc.id}"
  cidr_block        = "${var.private_cidr_block3}"
  tags              = "${var.tags}"
  availability_zone = "${var.region}c"
}
