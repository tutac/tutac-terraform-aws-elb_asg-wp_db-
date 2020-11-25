resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.WP_DB_vpc.id}"
  tags   = "${var.tags}"
}
